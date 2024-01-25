CREATE VIEW dbo.uvw_Mod_Var
AS
SELECT        dbo.Bom_Mod_Var.Id AS ModVar_Id, dbo.Bom_Mod_Var.DrawingNumber, dbo.Bom_Mod_Var.ModelVariant, dbo.Bom_End_Items.InternalEndItem AS EndItem, dbo.Bom_Ext_Colors.Code AS Ext_Color_Code, 
                         dbo.Bom_Int_Colors.Code AS Int_Color_Code
FROM            dbo.Bom_End_Items INNER JOIN
                         dbo.Bom_Mod_Var ON dbo.Bom_End_Items.Id = dbo.Bom_Mod_Var.EndItemID INNER JOIN
                         dbo.Bom_Ext_Colors ON dbo.Bom_Mod_Var.ExtColID = dbo.Bom_Ext_Colors.ID INNER JOIN
                         dbo.Bom_Int_Colors ON dbo.Bom_Mod_Var.IntColID = dbo.Bom_Int_Colors.ID
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'uvw_Mod_Var';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "Bom_End_Items"
            Begin Extent = 
               Top = 87
               Left = 232
               Bottom = 217
               Right = 405
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Bom_Ext_Colors"
            Begin Extent = 
               Top = 22
               Left = 401
               Bottom = 152
               Right = 571
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Bom_Int_Colors"
            Begin Extent = 
               Top = 60
               Left = 600
               Bottom = 190
               Right = 770
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Bom_Mod_Var"
            Begin Extent = 
               Top = 26
               Left = 13
               Bottom = 156
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1845
         Alias = 900
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'uvw_Mod_Var';

