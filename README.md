# NavigationBarAlphaChange
查看navigationBar的 层次结构  
自创建一个导航栏继承与系统的导航栏
隐藏 _UIBackgroudView  并添加一个所谓的背景视图

通过重写setBarTintColor 放法 来改变导航条的颜色值 

最后利用kvc 把导航条付给导航控制器  
并设置当前C里的 scroll 自动布局为no  
根据偏移量来计算 alpha的值 
个人觉得比较简单 易用
