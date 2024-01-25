CREATE VIEW Inbound.uvw_Tracing_Export
AS
SELECT        Inbound.tbd_Carriers.Carrier_Name, Inbound.uvw_Container_Cargo_Types.Container_Cargo_Type, Inbound.tbd_Lots.Lot_Number, Inbound.tbd_Containers_In_Lot.Container_Number, Inbound.tbd_Invoices.Invoice_Number, 
                         Inbound.tbd_Types_Of_Transport.Transport_Type, Inbound.tbd_Containers_In_Lot.IMO_Cargo, Inbound.tbd_Containers_In_Lot.Seal_Number, Inbound.tbd_Lots.Lot_ETD, Inbound.tbd_Lots.Lot_ATD, 
                         Inbound.tbd_Locations.Location_Name AS Departure_Terminal, Inbound.uvw_Containers_In_TS.TS_Port, Inbound.uvw_Containers_In_TS.ETD_TS, Inbound.uvw_Containers_In_TS.ATD_TS, 
                         Inbound.uvw_Containers_In_TS.ETA_TS, Inbound.uvw_Containers_In_TS.ATA_TS, Inbound.uvw_Containers_In_STP.STP_Terminal, Inbound.uvw_Containers_In_STP.ETA_STP, Inbound.uvw_Containers_In_STP.ATA_STP, 
                         Inbound.tbd_Containers_In_Lot.Storage_Last_Free_Day AS Storage, Inbound.tbd_Containers_In_Lot.Detention_Last_Free_Day AS Detention, Inbound.uvw_Containers_In_CC.ETA_CC, Inbound.uvw_Containers_In_CC.ATA_CC, 
                         Inbound.uvw_Containers_In_CC.CC_Terminal, Inbound.uvw_Container_Docs_To_CSB.Docs_To_CSB, Inbound.uvw_Containers_In_CY.ATA_CY, Inbound.uvw_Containers_In_CY.ATD_CY, 
                         Inbound.uvw_Containets_In_Plant.ATA_NMGR, Inbound.tbd_Lots.Lot_ETA AS Target_ETA, '?' AS Cust_Insp_On_The_Way, Inbound.tbd_Containers_In_Lot.Container_Comment AS Comments
FROM            Inbound.tbd_Lots INNER JOIN
                         Inbound.tbd_Containers_In_Lot ON Inbound.tbd_Lots.Lot_Id = Inbound.tbd_Containers_In_Lot.Lot_Id INNER JOIN
                         Inbound.tbd_Invoices ON Inbound.tbd_Lots.Lot_Invoice_Id = Inbound.tbd_Invoices.Invoice_Id LEFT OUTER JOIN
                         Inbound.tbd_Carriers ON Inbound.tbd_Lots.Carrier_Id = Inbound.tbd_Carriers.Carrier_Id LEFT OUTER JOIN
                         Inbound.uvw_Containets_In_Plant ON Inbound.tbd_Containers_In_Lot.Container_In_Lot_Id = Inbound.uvw_Containets_In_Plant.Container_In_Lot_Id LEFT OUTER JOIN
                         Inbound.uvw_Containers_In_CY ON Inbound.tbd_Containers_In_Lot.Container_In_Lot_Id = Inbound.uvw_Containers_In_CY.Container_In_Lot_Id LEFT OUTER JOIN
                         Inbound.uvw_Container_Docs_To_CSB ON Inbound.tbd_Containers_In_Lot.Container_In_Lot_Id = Inbound.uvw_Container_Docs_To_CSB.Container_In_Lot_Id LEFT OUTER JOIN
                         Inbound.tbd_Locations ON Inbound.tbd_Lots.Lot_Departure_Location_Id = Inbound.tbd_Locations.Location_Id LEFT OUTER JOIN
                         Inbound.tbd_Types_Of_Transport ON Inbound.tbd_Lots.Lot_Transport_Type_Id = Inbound.tbd_Types_Of_Transport.Transport_Type_Id LEFT OUTER JOIN
                         Inbound.uvw_Containers_In_STP ON Inbound.tbd_Containers_In_Lot.Container_In_Lot_Id = Inbound.uvw_Containers_In_STP.Container_In_Lot_Id LEFT OUTER JOIN
                         Inbound.uvw_Containers_In_TS ON Inbound.tbd_Containers_In_Lot.Container_In_Lot_Id = Inbound.uvw_Containers_In_TS.Container_In_Lot_Id LEFT OUTER JOIN
                         Inbound.uvw_Containers_In_CC ON Inbound.tbd_Containers_In_Lot.Container_In_Lot_Id = Inbound.uvw_Containers_In_CC.Container_In_Lot_Id LEFT OUTER JOIN
                         Inbound.uvw_Container_Cargo_Types ON Inbound.tbd_Containers_In_Lot.Container_In_Lot_Id = Inbound.uvw_Container_Cargo_Types.Container_In_Lot_Id
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'Inbound', @level1type = N'VIEW', @level1name = N'uvw_Tracing_Export';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'  Top = 469
               Left = 995
               Bottom = 629
               Right = 1233
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbd_Locations (Inbound)"
            Begin Extent = 
               Top = 305
               Left = 311
               Bottom = 457
               Right = 491
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbd_Types_Of_Transport (Inbound)"
            Begin Extent = 
               Top = 310
               Left = 496
               Bottom = 423
               Right = 733
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "uvw_Containers_In_STP (Inbound)"
            Begin Extent = 
               Top = 142
               Left = 1188
               Bottom = 317
               Right = 1430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "uvw_Containers_In_TS (Inbound)"
            Begin Extent = 
               Top = 19
               Left = 961
               Bottom = 149
               Right = 1154
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "uvw_Containers_In_CC (Inbound)"
            Begin Extent = 
               Top = 223
               Left = 986
               Bottom = 353
               Right = 1179
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "uvw_Container_Cargo_Types (Inbound)"
            Begin Extent = 
               Top = 445
               Left = 581
               Bottom = 541
               Right = 767
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 31
         Width = 284
         Width = 1215
         Width = 990
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4950
         Alias = 3375
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'Inbound', @level1type = N'VIEW', @level1name = N'uvw_Tracing_Export';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[65] 4[13] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbd_Lots (Inbound)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 406
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tbd_Containers_In_Lot (Inbound)"
            Begin Extent = 
               Top = 6
               Left = 305
               Bottom = 256
               Right = 524
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tbd_Invoices (Inbound)"
            Begin Extent = 
               Top = 475
               Left = 734
               Bottom = 605
               Right = 910
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbd_Carriers (Inbound)"
            Begin Extent = 
               Top = 493
               Left = 296
               Bottom = 618
               Right = 466
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "uvw_Containets_In_Plant (Inbound)"
            Begin Extent = 
               Top = 364
               Left = 757
               Bottom = 460
               Right = 943
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "uvw_Containers_In_CY (Inbound)"
            Begin Extent = 
               Top = 361
               Left = 1032
               Bottom = 491
               Right = 1225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "uvw_Container_Docs_To_CSB (Inbound)"
            Begin Extent = 
             ', @level0type = N'SCHEMA', @level0name = N'Inbound', @level1type = N'VIEW', @level1name = N'uvw_Tracing_Export';

