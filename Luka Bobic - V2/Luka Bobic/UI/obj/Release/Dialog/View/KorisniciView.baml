   M S B A M L   `   `   `  ���� =  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:UI.Dialog.ViewUI.Dialog.View  J FCompositeCommon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Aclr-namespace:CompositeCommon.Converters;assembly=CompositeCommonCompositeCommon.Converters "    UI.Dialog.View.KorisniciView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     .localclr-namespace:UI.Dialog.View     i eXceed.Wpf.AvalonDock.Themes.VS2010, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4g cXceed.Wpf.AvalonDock.Themes.Aero, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4h dXceed.Wpf.AvalonDock.Themes.Metro, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4[	 WXceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4=xcad,http://schemas.xceed.com/wpf/xaml/avalondock    	 X
 TXceed.Wpf.Toolkit, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit 
 R
convertersAclr-namespace:CompositeCommon.Converters;assembly=CompositeCommon 
   � Title$  Luka Bobic - Apoteka�� � WindowStartupLocation$ CenterScreen=� � WindowState$ 	Maximized=� � 	Resources >  8CompositeCommon.Converters.DialogStateToEnabledConverter !  DialogStateToEnabledConverter��%   &	          .��) 	 #Xceed.Wpf.AvalonDock.DockingManager     Theme +  %Xceed.Wpf.AvalonDock.Themes.AeroTheme     Layout. , 	 &Xceed.Wpf.AvalonDock.Layout.LayoutRoot     	RootPanel. - 	 'Xceed.Wpf.AvalonDock.Layout.LayoutPanel     Orientation$ Vertical=�� 	 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.ILayoutPanelElement, Xceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]   Children. 6 	 0Xceed.Wpf.AvalonDock.Layout.LayoutAnchorablePane  � 	 �Xceed.Wpf.AvalonDock.Layout.LayoutPositionableGroup`1[[Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable, Xceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]	   	DockWidth$		 200 ��	 	 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable, Xceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]
 	  Children.
 2
 	 ,Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable
  / 	 )Xceed.Wpf.AvalonDock.Layout.LayoutContent   	ContentId$ 
properties��   Title$
 Data�� 
  CanHide .     CanClose .   
  AutoHideWidth$	 240Q�   Content. �  � ColumnDefinitions �� $��* � � RowDefinitions �� $
��Auto ��� $��* �.+��� $��0��$��0�� �� Orientation$ 
Horizontal=�.+��� $��Search: ���� $	��150��$��30��$��5q�$��0��$��0������ *Search+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ OneWayToSource=�&   System.Windows.Controls.DataGrid  -     Name$ DataGrid��$��0��$��1��   SelectionMode$ Single=�$   HorizontalScrollBarVisibility$
 Auto=�$
��Auto��   AutoGenerateColumns .     CanUserAddRows .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * {��� *DataGridEnabled+���� *Items+$ PropertyChanged=� �� SelectedItem �� *SelectedItem+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ ID��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *ID+$ OneWay=�  $ Username�� �� *
Username+$ OneWay=�  $	 Ime�� �� *Ime+$ OneWay=�  $ Prezime�� �� *	Prezime+$ OneWay=�  $		 200 �.
 
  $ 
properties��$ Controls�� .   .  $	 240Q�. �  �� $��* � �� $��* ��� $
��Auto �.+�� $��0��$��0��{��� *DialogState+  �� 	Converter#  [   �� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��0��$
��ID: ���� $��1��$��0��$	��200������ ! �� Path$! SelectedItem.ID�$ PropertyChanged=�" �� ValidatesOnDataErrors" . # �� NotifyOnValidationError# . $ �� ValidatesOnExceptions$ . �� $��0��$��1��$��
Username: ���� $��1��$��1��$	��200������ $! SelectedItem.Username�$ PropertyChanged=�" . # . $ . �� $��0��$��2��$��
Password: ��G� -   % G�Name$% password��$��1��$��2��$	��200���� $��0��$��3��$��Ime: ���� $��1��$��3��$	��200������ $! SelectedItem.Ime�$ PropertyChanged=�" . # . $ . �� $��0��$��4��$��	Prezime: ���� $��1��$��4��$	��200������ $! SelectedItem.Prezime�$ PropertyChanged=�" . # . $ . �� $��0��$��5��$��User Type: ���� $��1��$��5��$	��200��& �� DisplayMemberPath$
& Name��' �� SelectedValuePath$' Value��( �� SelectedValue( �� $! SelectedItem.UserType�$ PropertyChanged=�" . # . $ . ���� $! 	UserTypes��� $��0��$��1��$ 
Horizontal=�.+��� $��0��$��1��$��Dodaj������ *
AddCommand+�� $��0��$��2��$��Izmeni������ *EditCommand+�� $��0��$��3��$��Obrisi������ *DeleteCommand+�� $��0��$��4��) �� 	IsDefault) . $��Ok������ *	OkCommand+�� $��0��$��5��* �� IsCancel* . $��Odustani������ *CancelCommand+