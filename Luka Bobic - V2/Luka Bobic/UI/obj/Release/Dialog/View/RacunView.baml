   M S B A M L   `   `   `  ���� =  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:UI.Dialog.ViewUI.Dialog.View  J FCompositeCommon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Aclr-namespace:CompositeCommon.Converters;assembly=CompositeCommonCompositeCommon.Converters     UI.Dialog.View.RacunView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .localclr-namespace:UI.Dialog.View     X
convertersAclr-namespace:CompositeCommon.Converters;assembly=CompositeCommon     i eXceed.Wpf.AvalonDock.Themes.VS2010, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4g cXceed.Wpf.AvalonDock.Themes.Aero, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4h dXceed.Wpf.AvalonDock.Themes.Metro, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4[	 WXceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4=xcad,http://schemas.xceed.com/wpf/xaml/avalondock    	 X
 TXceed.Wpf.Toolkit, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit 
   � Title$  Luka Bobic - Apoteka�� � WindowStartupLocation$ CenterScreen=� � WindowState$ 	Maximized=� � 	Resources >  8CompositeCommon.Converters.DialogStateToEnabledConverter !  DialogStateToEnabledConverter:  4CompositeCommon.Converters.DateTimeToStringConverter  DateTimeToStringConverter��%   &	        &	          .��) 	 #Xceed.Wpf.AvalonDock.DockingManager     Theme +  %Xceed.Wpf.AvalonDock.Themes.AeroTheme     Layout. , 	 &Xceed.Wpf.AvalonDock.Layout.LayoutRoot     	RootPanel. - 	 'Xceed.Wpf.AvalonDock.Layout.LayoutPanel     Orientation$ Vertical=�� 	 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.ILayoutPanelElement, Xceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]   Children. 6 	 0Xceed.Wpf.AvalonDock.Layout.LayoutAnchorablePane  �	 	 �Xceed.Wpf.AvalonDock.Layout.LayoutPositionableGroup`1[[Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable, Xceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]	 	  	DockWidth$		 200 ��
 	 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable, Xceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]
 
  Children.
 2 	 ,Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable  / 	 )Xceed.Wpf.AvalonDock.Layout.LayoutContent   	ContentId$ 
properties��   Title$
 Data��   CanHide .     CanClose .     AutoHideWidth$	 240Q�   Content. �  � RowDefinitions �� $��* ��� $
��Auto �.+�� $��0�� � ColumnDefinitions �� $��* � �� $
��Auto ��� $��* �.+��� $��0��$��0�� �� Orientation$ 
Horizontal=�.+��� $��Search���� $	��150��$��30��$��5q�$��0��$��0������ *Search+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ OneWayToSource=�&   System.Windows.Controls.DataGrid  -     Name$ DataGrid��$��0��$��1��   SelectionMode$ Single=�$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   AutoGenerateColumns .     CanUserAddRows .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * {��� *DataGridEnabled+���� *Items+$ PropertyChanged=� �� SelectedItem �� *SelectedItem+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ ID��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *ID+$ OneWay=�  $ Drug Dealer�� �� *Lekar+$ OneWay=�  $ Price�� �� *Cena+$ OneWay=�  $
 Date�� �� *Vreme+$ OneWay=�  �� 	Converter#  [ � $��1��$	��200�� �� $��* � �� $
��Auto ��� $��* �.+��� $��0��$��0��$ 
Horizontal=�.+��� $��1��$��5��$	��200��! �� DisplayMemberPath$
! Name��" �� SelectedValuePath$" Value��# �� SelectedValue# �� $ �� Path$$ SelectedDrug�$ PropertyChanged=�% �� ValidatesOnDataErrors% . & �� NotifyOnValidationError& . ' �� ValidatesOnExceptions' . ���� $$ Drugs�% 
 Xceed.Wpf.Toolkit.DecimalUpDown  $	��100��� 
 �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Decimal, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]](   Value( �� $$ Quantity��� $	��Add������ *AddDrugCommand+  -   $ 	rDataGrid��$��0��$��1��$ Single=�$
 Auto=�$
��Auto�� .   .  $ * {��� *DataGridEnabled+���� *SelectedItem.Lekovi+$ PropertyChanged=�   $	 Lek�� �� *Key+  $
 Cena�� �� *Value+  $		 200 �.
   $ 
properties��$ Controls�� .   .  $	 240Q�. �  �� $��* � �� $��* ��� $
��Auto �.+�� $��0��$��0��{��� *DialogState+#  [   �� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$��Lekar: ���� $��1��$��0��$	��200������ $$ SelectedItem.Lekar�$ PropertyChanged=�% . & . ' . �� $��0��$��1��$��Recept: ���� $��1��$��1��$	��200������ $$ Recept�$ PropertyChanged=�% . & . ' . �� $��0��$��2��$��Vreme: ��& 
  Xceed.Wpf.Toolkit.DateTimePicker  $��1��$��2��& 
  Xceed.Wpf.Toolkit.DateTimeUpDown)   Format$) 	ShortDate=�� 
 �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.DateTime, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]*   Value* �� $$ SelectedItem.Vreme�$ PropertyChanged=�% . & . ' . �� $��0��$��1��$ 
Horizontal=�.+��� $��0��$��1��$��Dodaj������ *
AddCommand+�� $��0��$��2��$��Izmeni������ *EditCommand+�� $��0��$��3��$��Obrisi������ *DeleteCommand+�� $��0��$��4��+ �� 	IsDefault+ . $��Ok������ *	OkCommand+�� $��0��$��5��, �� IsCancel, . $��Odustani������ *CancelCommand+