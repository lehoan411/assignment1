USE [Assignment]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 12/12/2023 9:36:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[bill_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[total] [int] NOT NULL,
 CONSTRAINT [PK_bill] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bill_detail]    Script Date: 12/12/2023 9:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_detail](
	[bid] [bigint] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 12/12/2023 9:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cart_id] [bigint] NOT NULL,
	[product_id] [int] NOT NULL,
	[product_name] [varchar](255) NOT NULL,
	[product_img] [varchar](255) NOT NULL,
	[product_price] [float] NOT NULL,
	[total] [float] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 12/12/2023 9:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/12/2023 9:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[sell_id] [int] NOT NULL,
	[product_name] [nvarchar](max) NOT NULL,
	[product_price] [float] NOT NULL,
	[product_describe] [nvarchar](max) NOT NULL,
	[quantity] [int] NOT NULL,
	[img] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/12/2023 9:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](200) NULL,
	[user_pass] [nvarchar](255) NOT NULL,
	[isAdmin] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[view]    Script Date: 12/12/2023 9:36:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[view](
	[viewed] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (1, 4, 820)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (2, 4, 56)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (3, 4, 1010)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (4, 4, 56)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (5, 4, 56)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (6, 4, 56)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (7, 4, 56)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (8, 4, 672)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (9, 1, 700)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (10, 1, 630)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (11, 1, 3230)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (12, 1, 204)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (13, 1, 287)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (14, 1, 56)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (15, 1, 326)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (16, 2, 3148)
INSERT [dbo].[bill] ([bill_id], [user_id], [total]) VALUES (17, 1, 56)
SET IDENTITY_INSERT [dbo].[bill] OFF
GO
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (1, 12, 5, 67.2)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (1, 14, 2, 277.2)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (1, 24, 2, 46.8)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (2, 12, 1, 67.2)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (3, 29, 1, 1212)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (4, 12, 1, 67.2)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (5, 12, 1, 67.2)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (6, 12, 1, 67.2)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (7, 12, 1, 67.2)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (8, 1, 2, 16.8)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (8, 14, 1, 277.2)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (8, 24, 1, 46.8)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (8, 27, 1, 448.8)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (11, 29, 2, 1010)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (11, 27, 2, 374)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (11, 14, 2, 231)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (13, 12, 1, 56)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (13, 14, 1, 231)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (16, 26, 1, 40)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (16, 24, 2, 39)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (16, 29, 3, 1010)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (17, 12, 1, 56)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (9, 12, 1, 56)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (9, 14, 1, 231)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (9, 24, 1, 39)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (9, 27, 1, 374)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (14, 12, 1, 56)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (10, 12, 3, 56)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (10, 14, 2, 231)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (12, 3, 2, 6)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (12, 2, 2, 96)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (15, 12, 1, 56)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (15, 14, 1, 231)
INSERT [dbo].[bill_detail] ([bid], [product_id], [quantity], [price]) VALUES (15, 24, 1, 39)
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_name]) VALUES (1, N'BÀN PHÍM')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (2, N'CHUỘT')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (3, N'TAI NGHE')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (4, N'LOA')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (5, N'CÁP & SẠC')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (6, N'SẠC DỰ PHÒNG')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (7, N'ỐP LƯNG')
INSERT [dbo].[category] ([category_id], [category_name]) VALUES (8, N'MÀN HÌNH')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (1, 1, 1, N'Bàn phím game có dây Zadez G-850K Gen 2', 14, N'Bàn phím Zadez G-850K Gen 2 tự hào sở hữu kích thước nhỏ gọn (400 x 140 x 44 mm) cùng trọng lượng khá nhẹ (790 gram), tạo nên sự chắc chắn và thoải mái khi sử dụng. Được sản xuất từ chất liệu nhựa ABS cao cấp, bàn phím không chỉ khẳng định được độ bền vượt trội, mà còn có khả năng chống chịu đáng kinh ngạc trước những tác động từ môi trường xung quanh. Mỗi phím trên bàn phím Zadez G-850K Gen 2 đều được chăm chút tỉ mỉ với kích thước tiêu chuẩn, đảm bảo mang lại trải nghiệm gõ phím thoải mái và suôn sẻ cho người dùng. Nhờ vào sự kết hợp tinh tế giữa thiết kế hiện đại và chất liệu cao cấp, sản phẩm này sẽ đáp ứng hoàn hảo nhu cầu và kỳ vọng của người dùng trong quá trình chơi game.', 124, N'image/Zadez_G-850k.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (2, 1, 0, N'Bàn phím cơ có dây Corsair K60 Pro SE', 96, N'Một trong những điểm ấn tượng nhất trên bàn phím cơ Corsair K60 RGB Pro SE chính là hệ thống đèn nền RGB sống động. Thông qua phần mềm Corsair iCUE, người dùng có thể dễ dàng điều khiển các hiệu ứng ánh sáng RGB theo ý thích hoặc đồng bộ hóa ánh sáng toàn hệ thống một cách dễ dàng (nếu bạn sử dụng các thiết bị khác của Corsair như quạt tản nhiệt, quạt...).', 16, N'image/CorsairK60.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (3, 1, 0, N'Bàn phím không dây Logitech K270', 6, N'Bàn phím không dây Logitech K270 là một chiếc bàn phím fullsize, đảm bảo đầy đủ các phím chữ, phím chức năng và bàn phím số, thích hợp cho dân văn phòng, nhất là những ai thường xuyên làm việc với dữ liệu. Bên cạnh đó, Logitech còn cung cấp thêm 8 phím nóng đặc biệt dựa trên những thói quen của người dùng bao gồm truy cập Internet, mở email, nghe nhạc, tắt âm thanh cùng nhiều chức năng khác,... Dưới bàn phím là phần chân nghiêng có tác dụng nâng đỡ sản phẩm, thay đổi độ cao linh hoạt để tạo tư thế thoải mái khi đánh máy, thường dùng cho những người không gõ phím thường xuyên.', 86, N'image/LOGITECH-K270.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (4, 1, 0, N'Bàn Phím Không Dây Bluetooth Logitech K580', 60, N'Bàn phím không dây Logitech K580 không chỉ là một sản phẩm công nghệ thông thường, mà còn là một tuyên ngôn về sự hiện đại và sự gọn gàng trong không gian làm việc. Với thiết kế siêu mỏng và tối giản, nó không chỉ đơn thuần là một công cụ nhập liệu mà còn là một phần của không gian làm việc hiện đại, nơi mà sự tinh tế và sự tiện nghi hòa quyện với nhau.', 46, N'image/bluetooth-logitech-k580.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (5, 2, 0, N'Chuột không dây ZADEZ M390', 4, N'Chuột không dây Zadez M390 thực sự là một tinh hoa của công nghệ khi được trang bị cảm biến PixArt với độ phân giải cao lên đến 1600 DPI. Điều này mang đến khả năng đáp ứng chính xác và mượt mà vượt xa sự kỳ vọng của người dùng. Chuột cũng có các nút điều chỉnh DPI trực tiếp, cho phép bạn tinh chỉnh độ nhạy của chuột theo ý muốn, phù hợp với từng nhiệm vụ cụ thể mà bạn đang thực hiện trên màn hình máy tính.', 86, N'image/ZADEZ-M390.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (6, 2, 1, N'Chuột Gaming Logitech G102 Gen2 Lightsync', 16, N'Logitech G102 Gen 2 Lightsync có tạo hình hết sức cổ điển với kiểu dáng đối xứng truyền thống. Sản phẩm ghi dấu ấn hiện đại nhờ công nghệ đèn LED RGB tạo điểm nhấn. Sự tinh tế của Logitech được thể hiện qua hệ thống 6 nút tiện lợi, cho phép bạn kích hoạt nhanh các tính năng được thiết lập ở các vị trí dễ nhấn khi cầm nắm. Để thiết lập tính năng cho từng nút bấm trên thân chuột gaming, bạn chỉ cần kết nối Logitech G102 Gen với ứng dụng HUB G của Logitech và gán các lệnh cho phù hợp khi chơi game. Lợi thế này cho phép bạn tối giản quá trình thao tác và xây dựng được bộ tổ hợp kỹ năng của riêng mình. Hãy thỏa sức khám phá, sáng tạo để tăng thêm độ thú vị cho tựa game mà bạn yêu thích. Công nghệ LIGHTSYNC hỗ trợ thiết lập hệ thống ánh sáng RGB màu sắc RGB theo cách sống động và linh hoạt nhất. Với 16.8 triệu màu rực rỡ lấy cảm hứng từ các tựa game đa phương tiện, Logitech G102 Gen 2 sẽ khơi nguồn cảm hứng gaming trong bạn với các đợt sóng sắc màu rực rỡ. Với Logitech G102 Gen 2 trong tay, bạn sẽ có lợi thế tuyệt đối để thao tác trong mọi tựa game mình thích. Trong các ưu điểm mà sản phẩm sở hữu, nổi bật nhất là độ nhạy tối đa lên đến 8.000 DPI. Bạn sẽ cảm nhận được sự chính xác và độ mượt mà ngay từ lần đầu cầm vào sản phẩm này. Tùy theo mỗi tựa game, bạn có thể tùy chỉnh linh hoạt độ nhạy trong khoảng từ 200 đến 8000 DPI tùy theo tựa game mình chơi thông qua phần mềm HUB G của Logitech, sẽ có 5 thiết lập mặc định để bạn lựa chọn.', 272, N'image/G102 Gen2.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (7, 2, 0, N'Chuột Bluetooth Microsoft BlueTrack Modern Mobile', 35, N'Chuột không dây Microsoft Modern Mobile Mouse là một phụ kiện tiện ích với thiết kế nhỏ gọn, mang đến trải nghiệm sử dụng linh hoạt và tiện lợi trong công việc hàng ngày. Với kích thước chỉ 107,20 x 60,30 x 25,80 mm, sản phẩm này có thể dễ dàng được cất vào túi xách hay cặp laptop của bạn mà không chiếm quá nhiều không gian. Dù bạn đang di chuyển đến cuộc họp tại công ty, làm việc tại quán cà phê hay du lịch đến nhiều địa điểm, chuột Microsoft Modern Mobile Mouse sẽ là người bạn đồng hành đáng tin cậy. Với tính di động cao, bạn có thể mang theo chuột đến bất kỳ đâu mà không gặp bất kỳ khó khăn nào.', 43, N'image/microsoft-bluetrack.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (8, 3, 3, N'Tai nghe gaming Corsair HS35 Stereo', 36, N'Dù là sản phẩm có giá rẻ nhất của hãng nhưng không vì thế mà HS35 bị tụt lại, chiếc tai nghe này cũng được trang bị củ loa neodymium 50 mm cao cấp, mang đến chất lượng âm thanh vượt trội chất âm luôn duy trì độ ổn định, đáp ứng cho những tựa game bắn súng đình đám ngày nay như CS.GO, PUBG. Với kiểu dáng chất âm tốt, nó sẽ phù hợp với mọi nhu cầu chơi game, cũng như thoải mái làm việc cả ngày dài. Với HS35 Stereo, bạn có thể cắm, kết nối để sử dụng tai nghe gaming với hầu hết các thiết bị, từ Xbox One, PC, PS4 đến các thiết bị di động có jack cắm 3.5 mm. Có thể thấy, mọi thiết bị gaming đến nghe nhạc, giải trí đều được hỗ trợ, sử dụng một cách dễ dàng. HS35 Stereo cũng được tích hợp các phím điều chỉnh âm lượng và bật tắt mic bên màng loa trái, mang đến trải nghiệm cực tiện lợi, nhanh chóng cho người dùng.', 81, N'image/hs35stereo.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (9, 3, 50, N'Tai nghe bluetooth ivalue BT008', 9, N'Điểm nhấn quan trọng của chiếc tai nghe bluetooth i.value BT008 bạn đang theo dõi nằm ở cách thiết kế gọn nhẹ, hiện đại với phần dây quàng quanh cổ cho phép người dùng thoải mái vận động mạnh khi sử dụng, cực kì phù hợp để bạn nghe nhạc lúc tập thể dục. Trọng lượng nhẹ nhàng và nút cao su bám tai giúp phòng tránh mọi hiện tượng bị mỏi hay gây khó chịu khi trải nghiệm một thời gian dài. i.value đã khéo léo bố trí hệ thống phím tăng – giảm volume và micro trên phần dây quàng cổ của BT008, nhờ vậy, chủ nhân chiếc tai nghe có thể dễ dàng nhận cuộc gọi và đàm thoại khi đang nghe nhạc hoặc điều chỉnh âm lượng một cách dễ dàng mà chẳng cần chạm vào thiết bị phát tín hiệu âm thanh.', 16, N'image/i-value-bt008.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (10, 3, 1, N'Tai nghe Bluetooth choàng đầu Defunc Mondo', 174, N'Với trọng lượng chỉ nặng 275 gram, tai nghe choàng đầu không dây Defunc Mondo sẽ mang lại cảm giác đeo nhẹ nhàng và thoải mái, giúp bạn có thể sử dụng trong thời gian dài mà không cảm thấy bị khó chịu hay mệt mỏi. Các chất liệu cao cấp được sử dụng trong thiết kế của Defunc Mondo đảm bảo sự thoải mái, vừa vặn hoàn hảo trên mọi kích cỡ đầu của người dùng. Đệm tai mềm mại và co giãn tự nhiên giúp tai nghe ôm sát hai bên tai, đồng thời giảm thiểu cảm giác chật chội hoặc gây đau nhức khi sử dụng trong thời gian dài. Tai nghe choàng đầu không dây Defunc Mondo không chỉ tập trung vào việc mang đến trải nghiệm âm thanh xuất sắc mà còn mang sứ mệnh truyền tải thông điệp về bảo vệ môi trường. Với tầm nhìn đó, Defunc Mondo đã tiên phong trong việc sử dụng chất liệu tái chế từ nhựa cho cả cấu trúc bên trong và ngoài tai nghe, nhằm giảm thiểu tác động tiêu thụ tài nguyên tự nhiên, đóng góp tích cực vào việc bảo vệ hành tinh của chúng ta.', 62, N'image/DEFUNC-MONDO.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (11, 3, 4, N'Tai nghe choàng đầu có mic Gaming Soundmax AH335', 21, N'So với những thế hệ tai nghe SoundMax trước đây, SoundMax AH-335 đã được lột xác hoàn toàn trong một thiết kế trẻ trung và hiện đại hơn. Trên chiếc tai nghe chơi game này, nhà sản xuất sử dụng các đường nét góc cạnh, hầm hố và liền lạc hơn để cuốn hút bất kỳ game thủ nào ngay từ cái nhìn đầu tiên. Các chi tiết nhựa được phủ lên một lớp sơn nhám ánh kim trong khi phần vòm chụp đầu được gia tăng sự cứng cáp bởi một khung xương kim loại. Tuy nhiên, phần thiết kế ấn tượng nhất trên sản phẩm lại đến từ dải đèn LED RGB chạy dọc mặt ngoài củ tai và phần logo. Chỉ cần bạn cắm tai nghe vào máy tính hay laptop, bạn chắc chắn sẽ khiến mọi ánh nhìn đổ dồn về phía mình bởi màu sắc của dải LED này liên tục chuyển đổi một cách mượt mà và bắt mắt.', 14, N'image/SOUNDMAX-AH335.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (12, 4, 40, N'Loa vi tính SoundMax A2126', 56, N'SoundMax A2126 nổi bật với thiết kế sang trọng và hiện đại với tông màu đen chủ đạo và chất liệu ốp gỗ cao cấp. Các loa vệ tinh và loa trầm của A2126 có dạng hình hộp chữ nhật với mặt trước vát nghiêng tạo cảm giác sang trọng cho mọi không gian mà bạn sử dụng loa. Cho dù bạn lắp đặt sản phẩm trên bàn làm việc, bên cạnh màn hình vi tính, kệ để TV... thì bộ loa vi tính này cũng sẽ làm tăng thêm tính thẩm mỹ cho khu vực xung quanh. Không những đẹp và hiện đại, SoundMax A2126 còn có công suất vô cùng ấn tượng lên đến 54W. Sự kết hợp giữa hai loa vệ tinh và một loa siêu trầm sẽ đảm bảo mọi thứ đến tai bạn đều trở nên mạnh mẽ hơn bao giờ hết. Vì vậy, bộ loa vi tính này sẽ cung cấp cho bạn những không gian âm nhạc tuyệt vời bất cứ khi nào bạn muốn. Bên cạnh đó, SoundMax A2126 còn được trang bị tần số 50Hz tối ưu, phù hợp để phát mọi thể loại nhạc hiện nay. Cho dù bạn xem phim hay nghe nhạc, loa vi tính của SoundMax đều sẽ mang đến những âm thanh sống động với dải âm rộng và bass mạnh mẽ.', 14, N'image/SoundMaxA2126.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (13, 4, 9, N'Loa Bluetooth JBL Go 3', 40, N'Với số đo các chiều là 87,5 x 75 x 41,3 mm (dài x rộng x cao), JBL Go 3 là một trong những chiếc loa Bluetooth có kích thước nhỏ nhất trên thị trường. Nhờ vậy, bạn có thể dễ dàng mang chiếc loa này theo bên mình mà không gặp bất cứ khó khăn nào. Cho vào túi quần hay túi xách, tất cả đều rất đơn giản. Ngoài ra, loa di động của JBL còn có một quai xỏ ngón tay rất chắc chắn, cho phép người dùng xỏ bất kỳ ngón tay nào vào để cầm loa hoặc thậm chí móc loa vào chìa khoá để treo lên bất cứ đâu mình thích. Phần quai này cũng được gắn chặt vào khung vỏ của loa nên bạn hãy yên tâm về độ bền của nó nhé. Năm nay, JBL đã mang đến những sự đột phá về thiết kế nhỏ gọn tiện lợi trên loa Go 3. Tuy nhiên, bạn đừng nhìn vào kích thước mà đánh giá chất lượng âm thanh của sản phẩm. Mặc dù nhỏ nhưng JBL Go 3 có loa công suất lên tới 4.2W và màng loa siêu mỏng, cung cấp âm thanh đầu ra chất lượng với nhiều dải âm và độ rộng âm sắc lớn. Ngoài ra, âm bass của loa phát ra khá chắc chắn và không bị rè.', 56, N'image/jblGo3.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (14, 4, 30, N'Loa Bluetooth Harman Kardon Onyx Studio 7', 231, N'Loa Bluetooth của Harman Kardon khá nặng, tuy nhiên tay cầm anodized tích hợp sẽ giúp bạn có thể dễ dàng cầm chiếc loa này đến bất cứ bữa tiệc nào bạn muốn. Ngoài tác dụng tăng tính thẩm mỹ và đảm bảo sự linh hoạt cho loa, tay cầm của Onyx Studio 7 còn trở thành một chân đế vững chắc giúp cho loa nằm đúng vị trí trên mọi bề mặt phẳng. Hơn nữa, loa cũng có thời lượng pin lên đến 8 giờ chơi nhạc cho bạn mang theo bản nhạc yêu thích tới mọi nơi. Bên dưới lưới loa, Harman Kardon Onyx Studio 7 đã được trang bị hai loa tweeter 25mm và một loa trầm 120mm kết hợp cho công suất 50W và cung cấp dải tần từ 50Hz đến 20kHz. Thiết kế này giúp cho loa không dây của H/K có khả năng cung cấp âm thanh to và rõ ràng, phù hợp để nghe nhạc trong các không gian rộng từ 15 đến 20 mét vuông. Bên cạnh đó, loa cũng được tinh chỉnh để cho phép phát âm thanh nổi trung thực với dải âm rộng và âm bass chắc chắn thích hợp cho nhiều thể loại nhạc khác nhau.', 66, N'image/HARMAN-KARDON.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (15, 4, 1, N'Loa bluetooth JBL Charge 5', 142, N'JBL Charge 5 có xếp hạng IP67, có nghĩa là nó có thể chịu được bụi và ngâm nước máy ở độ sâu lên đến 1 mét trong tối đa 30 phút. Vì vậy, bạn có thể yên tâm sử dụng chiếc loa bluetooth này để nghe nhạc trong các bữa tiệc ngoài trời hoặc trên bãi biển. Chỉ cần đảm bảo nắp cổng sạc được đóng chặt, loa sẽ vẫn hoạt động tốt ngay cả sau khi bị chìm trong một xô nước đầy. Tất nhiên, bạn cũng không nên lạm dụng tính năng này khi sử dụng JBL Charge 5. Âm thanh phát ra từ JBL Charge 5 chắc chắn sẽ không làm bạn thất vọng. Loa không dây có âm lượng lớn đủ để làm sôi động không gian của một bữa tiệc nhỏ. Đáng chú ý, loa không dây có thiết kế 2 loa tweeter và màng rung thụ động JBL Bass Radiators giúp tăng cường âm bass với độ sâu tốt hơn, dải cao được cải thiện sáng rõ hơn so với người tiền nhiệm.', 19, N'image/jbl-charge-5.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (16, 5, 7, N'Cáp USB-C to Lightning MFI Belkin Playa 30W dây dù 1m3', 16, N'Cáp sạc USB-C to Lightning Belkin Playa có thiết kế hết sức đơn giản với ba bộ phận chính gồm: Đầu cắm Lightning, đầu USB-C và thân cáp bện dù. Belkin cho thấy kinh nghiệm lâu năm trong lĩnh vực sản xuất phụ kiện khi bọc cao su ở hai điểm tiếp giáp giữa thân cáp và các đầu kết nối – đây là những bộ phận dễ gãy và tổn thương nhất trên sợi cáp. Để sạc nhanh được cho điện thoại, bạn không chỉ cần bộ sạc tương thích mà cũng cần một sợi cáp kết nối với hai đầu cắm phù hợp và được sản xuất để chịu được dòng điện công suất cao. USB-C to Lightning Belkin Playa chính là một sản phẩm như vậy. Belkin đã xây dựng sợi cáp đạt chuẩn tương thích USB-C Delivery với khả năng sạc nhanh cho iPhone trong thời gian ngắn và an toàn nhất. Bạn sẽ không mất nhiều thời gian đợi chờ trong quá trình tái tạo năng lượng cho chiếc điện thoại của mình.', 126, N'image/MFI_Belkin30.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (17, 5, 11, N'Cáp chuyển đổi Type-C Hub Belkin 6 in 1', 99, N'Được xem là thiết bị đột phá trong ngành công nghệ suốt 35 năm qua do thành công tích hợp nhiều chức năng trong chỉ một thiết bị duy nhất, chiếc Hub chuyển đổi Type C 6 in 1 do Belkin sản xuất vẫn đảm bảo thực hiện mọi tác vụ một cách hiệu quả, nhanh nhạy và an toàn tối đa.Belkin đã sản xuất bộ hub này bằng những chất liệu thân thiện với môi trường và xây dựng quy trình kiểm định nghiêm ngặt nhằm đảm bảo mỗi sản phẩm đến tay người dùng đều có chất lượng tối ưu.', 136, N'image/Cap-hub-usb-c-6-in-1-belkin-4.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (18, 5, 5, N'Củ sạc nhanh Anker 20W Powerport III A2633', 14, N'Củ sạc nhanh Anker 20W hiện đang được khuyên dùng như một trong những giải pháp sạc nhanh tối ưu nhất cho dòng sản phẩm iPhone 12 series gồm iPhone 12 mini, iPhone 12, iPhone 12 Pro và iPhone 12 Pro Max. Công suất 20W vừa đủ để phát huy tối ưu tính năng sạc nhanh mà Apple đem tới cho thế hệ iPhone mới. Ngoài ra, thiết bị cũng có khả năng sạc nhanh cho các dòng iPhone kể từ iPhone 8 trở về sau. Ước tính, Củ sạc nhanh Anker 20W có thể nạp đủ điện năng để bạn xem video hơn 3,5 giờ trên smartphone sau 15 phút sạc.', 186, N'image/powerport-anker-a2633.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (19, 5, 1, N'Cáp Lightning Aukey CB-BAL7 MFI 0.9m', 9, N'Sản phẩm bạn đang theo dõi hỗ trợ đầu kết nối Lightning và đạt chứng nhận MFI (Made For iPhone, iPad, iPod) do chính Apple kiểm định, cung cấp. Đây là tiêu chuẩn đảm bảo phụ kiện do bên thứ ba sản xuất đạt độ tương thích tốt nhất khi kết nối cùng các thiết bị Apple về cả năng lực truyền tải dòng điện, khả năng đồng bộ dữ liệu và tính an toàn khi sử dụng. Bạn hoàn toàn có thể tin tưởng 100% vào chất lượng của cáp kết nối Aukey CB-BAL7.', 134, N'image/cap-lightning-mfi-0-9m-aukey-cb-bal7-3.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (20, 6, 2, N'Pin sạc dự phòng Anker PowerCore Select 10000mAh A1223', 22, N'Dù có kích cỡ nhỏ gọn nhưng Anker PowerCore Select A1223 lại chứa đựng dung lượng pin lớn tới 10.000 mAh, cho phép chủ nhân thoải mái lưu trữ lượng điện năng đủ sạc điện thoại nhiều lần trong ngày. Sản phẩm hỗ trợ người dùng với 2 cổng sạc USB đầu ra, với hai đầu 5V = 2.4A mỗi cổng. Lưu ý là khi sử dụng cùng lúc 2 cổng để sạc pin thì công suất tối đa mà PowerCore Select A1223 đạt được là 12W.Với dung lượng pin 10.000 mAh, ước tính sau khi đầy năng lượng, bộ sạc này có thể cung cấp đủ pin khoảng 2.2 lần cho iPhone X hoặc 3.5 lần nếu bạn dùng iPhone 8.', 52, N'image/sac-du-phong-ion-10000.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (21, 6, 1, N'Pin sạc dự phòng UmeTravel 20000mAh TRIP20000 Quick Charge', 32, N'Thế mạnh nổi trội ở UMETRAVEL TRIP20000 là việc thiết bị chứa đựng dung lượng pin lên tới 20.000 mAh. Đem theo bộ sạc dự phòng này, bạn sẽ thoải mái tận hưởng tác vụ giải trí như chơi game, xem phim, nghe nhạc và đọc báo trên các thiết bị di động mình sở hữu mà không cần lo lắng tới trường hợp hết pin bất ngờ nữa. Với khả năng lưu trữ năng lượng vượt trội và tránh thất thoát pin chờ trong thời gian dài, TRIP20000 đảm bảo sạc pin cho smartphone của bạn trong nhiều lần suốt chuyến hành trình dài ngày.', 234, N'image/Quick-charge-umetravel-trip20000.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (22, 6, 6, N'Pin sạc dự phòng Magnetic Extreme Speed QC/PD 20W 10000mAh Devia', 36, N'Với việc kết hợp giữa thiết kế trong suốt và mỏng nhẹ, sạc dự phòng Devia Punk Style Extreme Speed Magnetic không chỉ là một công cụ cung cấp năng lượng, mà còn là một phần của phong cách sống hiện đại, đồng hành cùng bạn trong mọi tình huống và hành trình. Bạn có thể dễ dàng đặt sản phẩm trong túi, balo hoặc thậm chí túi quần áo mà không cảm thấy cồng kềnh khi di chuyển. Sự nhỏ gọn của sản phẩm đảm bảo bạn sẽ luôn có một người bạn đáng tin cậy để sạc pin cho các thiết bị khác mọi lúc, mọi nơi.', 53, N'image/PIN-MAGNETIC.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (23, 6, 12, N'Pin sạc dự phòng Innostyle 10000mAh Magsafe 3.0/PD 22.5W', 40, N'Ngoài việc hỗ trợ sạc MagSafe với công suất 15W, Innostyle PowerGo Magnectic còn có cổng đầu ra USB Type-C hỗ trợ PD20W và cổng USB-A hỗ trợ công suất lên đến 22.5W. Bộ sạc dự phòng này cũng hỗ trợ hàng loạt các công nghệ sạc nhanh của nhiều thương hiệu như Huawei SCP, OPPO VOOC, QC3.0. Cho dù bạn đang sử dụng điện thoại nào, PowerGo Magnectic chắc chắn sẽ giúp thiết bị của bạn được nạp đầy pin trong nháy mắt.', 25, N'image/MAGSAFE-INNOSTYLE.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (24, 7, 26, N'Ốp Lưng Samsung Galaxy Z Flip5 Araree Canvas Diary', 39, N'Bên cạnh vẻ ngoài thời thượng, ốp lưng Araree Canvas Diary cho Galaxy Z Flip5 còn có dây đeo kiểu chéo đi kèm. Trong những ngày bạn không muốn mang theo túi xách hoặc không có túi quần áo để đặt điện thoại, dây đeo này sẽ trở thành người bạn đồng hành đáng tin cậy. Khi bạn muốn tự do di chuyển mà không cần phải cầm điện thoại trong tay, dây đeo kiểu chéo của ốp lưng Araree sẽ đảm bảo bạn có thể mang theo điện thoại một cách dễ dàng.', 16, N'image/ỐpSamsungFlip5.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (25, 7, 13, N'Ốp lưng iPhone 15 Promax ESR nhựa TPU chống sốc quân đội, chống ố vàng, có đế dựng', 18, N'Ốp lưng ESR Boost Kickstand trong suốt cho iPhone 15 Pro Max không chỉ là một phụ kiện bảo vệ điện thoại, mà còn là một công cụ đa năng giúp nâng cao trải nghiệm sử dụng của bạn. Với khả năng cung cấp tới ba chế độ đứng ổn định, ốp lưng này sẽ biến chiếc iPhone của bạn thành một thiết bị giải trí đa dạng và linh hoạt. Bạn có thể dễ dàng thực hiện cuộc gọi FaceTime với gia đình và bạn bè ở chế độ dọc, giữ cho kết nối giữa mọi người luôn trong tình trạng thoải mái nhất. Khi muốn thư giãn, bạn chỉ cần chuyển ốp lưng sang chế độ ngang và tận hưởng những bộ phim, video yêu thích mà không cần phải cầm chặt điện thoại trong tay. Sự tiện lợi và thoải mái mà ốp lưng này mang lại sẽ giúp bạn tận hưởng mỗi khoảnh khắc với iPhone 15 Pro Max một cách trọn vẹn nhất.', 111, N'image/op-iphone-15-promax.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (26, 7, 14, N'Ốp lưng magsafe iPhone 15 ProMax UNIQ COEHL Muse giả da giảm sốc, ngừa thấm nước, có dây đeo', 40, N'Lớp phủ bên ngoài của ốp lưng Uniq Coehl Muse Dusty Nude là sự kết hợp tinh tế giữa tính năng và phong cách, được làm từ da eco cao cấp, mang đến một bề mặt có kết cấu độc đáo. Điều này không chỉ đảm bảo khả năng cầm nắm vững chắc, ổn định của thiết bị trong mọi hoàn cảnh mà còn tôn lên vẻ đẹp sang trọng, quý phái của chiếc iPhone 15 Pro Max. Da eco được sử dụng trong ốp lưng này không chỉ thân thiện với môi trường mà còn có khả năng chống thấm nước xuất sắc, giúp bảo vệ iPhone khỏi những tác động của môi trường bên ngoài. Bề mặt da mềm mại, dễ chạm, mang lại cảm giác thoải mái và dễ chịu khi cầm nắm, đồng thời giữ cho ốp lưng luôn mới mẻ và giữ được vẻ đẹp hoàn hảo qua thời gian.', 24, N'image/oplung-magsafe-iphone-15-promax.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (27, 7, 21, N'Bao da kèm bàn phím (Pad chuột) Galaxy Tab S9 Ultra', 374, N'Khi sử dụng bao da Book Cover Keyboard, bạn sẽ được trải nghiệm như đang làm việc trên máy tính PC chỉ với một lần chạm. Bàn phím với kích thước đầy đủ không chỉ giúp bạn nhập liệu dễ dàng và hiệu quả, mà còn loại bỏ cảm giác hạn chế khi sử dụng bàn phím cảm ứng trên màn hình. Sự tích hợp của bàn di chuột cung cấp khả năng điều hướng mượt mà và chính xác, tạo điều kiện cho bạn làm việc và tương tác trên thiết bị một cách tự nhiên.', 36, N'image/pad-chuot-galaxy-tab-s9-ultra-06.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (28, 8, 20, N'Màn hình Asus TUF GAMING VG249Q3A 24" Fast IPS 180Hz Gsync', 154, N'Màn hình Asus TUF GAMING VG249Q1A sở hữu màn hình kích thước 24 inch, tấm nền IPS, độ phân giải Full HD (1920 x 1080) mang đến hình ảnh rõ nét từ mọi góc độ. Màn hình góc rộng 178 độ đảm bảo hạn chế thấp nhất sự biến dạng và thay đổi màu sắc ngay cả khi bạn đang đứng cách xa màn hình. Tốc độ làm mới cũng được ép xung lên đến 180Hz giúp loại trừ khả năng bị giật, lag màn hình và mang đến cho bạn ưu thế trong các tựa game bắn súng, đua xe, chiến lược thời gian thực và thể thao. Tốc độ làm mới này cho phép bạn chơi game với cấu hình hình ảnh ở mức cao nhất và phản ứng tức thì với những nội dung hiện trên màn hình.', 16, N'image/man-hinh-asus-tuf-gaming.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (29, 8, 15, N'Màn hình cong Samsung LC49G95 49" VA 2K 240Hz Gsync', 1010, N'Công nghệ HDR1000 tăng cường độ sâu trường ảnh với sắc đen sâu thẳm và sắc trắng thuần khiết. Công nghệ HDR10+ tối ưu độ sáng và độ tương phản, tái tạo cảnh game chính xác đúng với ý đồ nhà sản xuất. Mang đến bạn những khung hình chân thực và siêu thực, cùng một lúc. Sẵn sàng chinh chiến, hạ gục đối thủ với tốc độ chuẩn xác. Tần số quét siêu tốc 240Hz RapidCurve hạn chế tối đa tình trạng giựt hình, mang đến những chuyển động chiến đấu mượt mà. Luôn nắm bắt tình thế trong tích tắc nhờ tốc độ phản hồi 1ms, chuyển động chuột chính xác và khung hình rõ nét, không có hiện tượng bóng mờ.', 63, N'image/man-hinh-cong-samsung.jpg')
INSERT [dbo].[product] ([product_id], [category_id], [sell_id], [product_name], [product_price], [product_describe], [quantity], [img]) VALUES (30, 8, 19, N'Màn hình ACER EK221Q H 22" 100Hz', 77, N'ACER EK221Q H mang trong mình tần số quét 100Hz, thời gian phản hồi 1ms mang lại khả năng phản hồi nhanh với mọi hành động của kẻ thù và làm chủ cuộc chơi. Đi kèm với đó là những công nghệ tiên tiến như Bluelightshield và chống nhấp nháy nhằm loại bỏ 80% lượng ánh sáng xanh tiềm ẩn gây hại cho mắt của game thủ khi phải ngồi trước màn hình máy tính quá lâu. Và công nghệ ComfyView giúp màu sắc và chất lượng màn hình không bị ảnh hưởng ngay cả trong điều kiện môi trường ánh sáng mạnh.', 186, N'image/acer_ek221q.jpg')
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [user_name], [user_pass], [isAdmin]) VALUES (1, N'Admin', N'123', 1)
INSERT [dbo].[users] ([user_id], [user_name], [user_pass], [isAdmin]) VALUES (2, N'User', N'123456', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_pass], [isAdmin]) VALUES (3, N'null', N'123456', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_pass], [isAdmin]) VALUES (4, N'ronaldo', N'123', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_pass], [isAdmin]) VALUES (5, N'messi', N'1234', 0)
INSERT [dbo].[users] ([user_id], [user_name], [user_pass], [isAdmin]) VALUES (6, N'mra', N'123', 0)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
INSERT [dbo].[view] ([viewed]) VALUES (32)
GO
ALTER TABLE [dbo].[bill]  WITH CHECK ADD  CONSTRAINT [FK_bill_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[bill] CHECK CONSTRAINT [FK_bill_users]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_bill] FOREIGN KEY([bid])
REFERENCES [dbo].[bill] ([bill_id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_bill]
GO
ALTER TABLE [dbo].[bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_bill_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[bill_detail] CHECK CONSTRAINT [FK_bill_detail_product]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
