   M S B A M L   `   `   `  ����=  9UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:UI.Dialog.ViewUI.Dialog.View  5      J FCompositeCommon, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null`Aclr-namespace:CompositeCommon.Converters;assembly=CompositeCommonCompositeCommon.Converters 5
      "    UI.Dialog.View.KorisniciView   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:UI.Dialog.View     5      i eXceed.Wpf.AvalonDock.Themes.VS2010, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4g cXceed.Wpf.AvalonDock.Themes.Aero, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4h dXceed.Wpf.AvalonDock.Themes.Metro, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4[	 WXceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4=xcad,http://schemas.xceed.com/wpf/xaml/avalondock    	 5      X
 TXceed.Wpf.Toolkit, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit 
 5	      R
convertersAclr-namespace:CompositeCommon.Converters;assembly=CompositeCommon 
 5
        � Title$  Luka Bobic - Apoteka��5   	    � WindowStartupLocation$ CenterScreen=�6&    � WindowState$ 	Maximized=�6K    � 	Resources 5      >  8CompositeCommon.Converters.DialogStateToEnabledConverter !  DialogStateToEnabledConverter��%   &	          5   
   63   5      .��5      ) 	 #Xceed.Wpf.AvalonDock.DockingManager     Theme 5   
   +  %Xceed.Wpf.AvalonDock.Themes.AeroTheme  5         Layout. 5   
   , 	 &Xceed.Wpf.AvalonDock.Layout.LayoutRoot     	RootPanel. 5      - 	 'Xceed.Wpf.AvalonDock.Layout.LayoutPanel     Orientation$ Vertical=�6   � 	 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.ILayoutPanelElement, Xceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]   Children. 5      6 	 0Xceed.Wpf.AvalonDock.Layout.LayoutAnchorablePane  � 	 �Xceed.Wpf.AvalonDock.Layout.LayoutPositionableGroup`1[[Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable, Xceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]	   	DockWidth$		 200 �6,   �	 	 �Xceed.Wpf.AvalonDock.Layout.LayoutGroup`1[[Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable, Xceed.Wpf.AvalonDock, Version=3.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4]]
 	  Children.
 5      2
 	 ,Xceed.Wpf.AvalonDock.Layout.LayoutAnchorable
  / 	 )Xceed.Wpf.AvalonDock.Layout.LayoutContent   	ContentId$ 
properties��6,      Title$
 Data��6C    
  CanHide .     CanClose .   
  AutoHideWidth$	 240Q�5   -      Content. 5      �  � ColumnDefinitions 5      �� 5   "   $��* �63    � RowDefinitions 5      �� 5   "   $
��Auto �60   �� 5    "   $��* �60   .+�5#      �� $��0��6)   $��0��69    �� Orientation$ 
Horizontal=�6F   .+�5$   "   �� $��Search: ��6(   �� 5%   "   $	��150��6*   $��30��66   $��5q�6B   $��0��6M   $��0��6]   ��6j   �� *Search+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ OneWayToSource=�5&      &   System.Windows.Controls.DataGrid  5(      -   5          Name$ DataGrid��5(   '   $��0��69   $��1��6I      SelectionMode$ Single=�6|   $   HorizontalScrollBarVisibility$
 Auto=�6�   $
��Auto��5)   ,      AutoGenerateColumns .     CanUserAddRows .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6m   {�5(   V   �� *DataGridEnabled+��6�   �� *Items+$ PropertyChanged=� �� SelectedItem 5)      �� *SelectedItem+   Columns 5*   "   0  *System.Windows.Controls.DataGridTextColumn  5+   &   ,  &System.Windows.Controls.DataGridColumn   Header$ ID��69   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6E   �� *ID+$ OneWay=�  5,   &   $ Username��69    6K   �� *
Username+$ OneWay=�  5-   &   $	 Ime��69    6F   �� *Ime+$ OneWay=�  5.   &   $ Prezime��69    6J   �� *	Prezime+$ OneWay=�50      51      53      54        55      $		 200 �6,   .
 56      
  $ 
properties��6,   $ Controls��6C    .   .  $	 240Q�57   -   . 59      �  5:      �� 5;   "   $��* �63    5=      �� 5>   "   $��* �60   �� 5?   "   $
��Auto �60   .+�5B      � $��0��6#   $��0��63   {�6@   �� *DialogState+  �� 	Converter#  [   5C   "   �� 5D   &   $
��Auto �67   �� 5E   &   $
��Auto �67   �� 5F   &   $
��Auto �67    5H   "   �� 5I   &   $
��Auto �64   �� 5J   &   $
��Auto �64   �� 5K   &   $
��Auto �64   �� 5L   &   $
��Auto �64   �� 5M   &   $
��Auto �64   �� 5N   &   $
��Auto �64   .+�5R   "   �� $��0��6(   $��0��68   $
��ID: ��6E   �� 5S   "   $��1��5T      $��0��6   $	��200��6#   ��5S   *   �� ! �� Path$! SelectedItem.ID�$ PropertyChanged=�" �� ValidatesOnDataErrors" . # �� NotifyOnValidationError# . $ �� ValidatesOnExceptions$ . 5T   #   �� 5V   "   $��0��6(   $��1��68   $��
Username: ��6E   �� 5W   "   $��1��5X      $��1��6   $	��200��6#   ��5W   *   �� $! SelectedItem.Username�$ PropertyChanged=�" . # . $ . 5X   #   �� 5Z   "   $��0��6(   $��2��68   $��
Password: ��6E   G� 5[   "   -   5        % G�Name$% password��5[   .   $��1��5\      $��2��6   $	��200��6#   �� 5^   "   $��0��6(   $��3��68   $��Ime: ��6E   �� 5_   "   $��1��5`      $��3��6   $	��200��6#   ��5_   *   �� $! SelectedItem.Ime�$ PropertyChanged=�" . # . $ . 5`   #   �� 5b   "   $��0��6(   $��4��68   $��	Prezime: ��6E   �� 5c   "   $��1��5d      $��4��6   $	��200��6#   ��5c   *   �� $! SelectedItem.Prezime�$ PropertyChanged=�" . # . $ . 5d   #   �� 5f   "   $��0��6(   $��5��68   $��User Type: ��6E   �� 5g   "   $��1��6+   $��5��6;   $	��200��6H   & �� DisplayMemberPath$
& Name��5h   R   ' �� SelectedValuePath$' Value��6k   ( �� SelectedValue( 5g   T   �� $! SelectedItem.UserType�$ PropertyChanged=�" . # . $ . ��5h   +   �� $! 	UserTypes�5i   #   5k      �� 5m      $��0��6)   $��1��69   $ 
Horizontal=�6F   .+�5n   "   �� $��0��6)   $��1��69   $��Dodaj��6F   ��6V   �� *
AddCommand+�� 5o   "   $��0��6)   $��2��69   $��Izmeni��6F   ��6W   �� *EditCommand+�� 5p   "   $��0��6)   $��3��69   $��Obrisi��6F   ��6W   �� *DeleteCommand+�� 5q   "   $��0��6)   $��4��69   ) �� 	IsDefault) . $��Ok��6W   ��6d   �� *	OkCommand+�� 5r   "   $��0��6)   $��5��69   * �� IsCancel* . $��Odustani��6V   ��6i   �� *CancelCommand+5s      5t      5v      5w      5y      5z      5}      5~      