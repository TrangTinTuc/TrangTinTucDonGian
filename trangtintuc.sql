USE [TrangTinTuc]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 12/07/2021 8:41:20 PM ******/
DROP TABLE [dbo].[tblUser]
GO
/****** Object:  Table [dbo].[tblNews]    Script Date: 12/07/2021 8:41:20 PM ******/
DROP TABLE [dbo].[tblNews]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 12/07/2021 8:41:20 PM ******/
DROP TABLE [dbo].[tblCategory]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 12/07/2021 8:41:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[category_ID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNews]    Script Date: 12/07/2021 8:41:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNews](
	[news_ID] [int] IDENTITY(1,1) NOT NULL,
	[category_ID] [int] NOT NULL,
	[author_ID] [nchar](10) NOT NULL,
	[title] [nvarchar](500) NOT NULL,
	[body] [nvarchar](max) NOT NULL,
	[picture] [varchar](200) NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_tblNews] PRIMARY KEY CLUSTERED 
(
	[news_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 12/07/2021 8:41:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[user_ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[power] [int] NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[phone] [varchar](15) NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[user_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (1, N'Thời Sự')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (2, N'Góc Nhìn')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (3, N'Thế Giới')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (4, N'Kinh Doanh')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (5, N'Khoa Học')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (6, N'Giải Trí')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (7, N'Thể Thao')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (8, N'Pháp Luật')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (9, N'Giáo Dục')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (10, N'Sức Khỏe')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (11, N'Đời Sống')
INSERT [dbo].[tblCategory] ([category_ID], [title]) VALUES (12, N'Du Lịch')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
SET IDENTITY_INSERT [dbo].[tblNews] ON 

INSERT [dbo].[tblNews] ([news_ID], [category_ID], [author_ID], [title], [body], [picture], [date]) VALUES (1, 7, N'2         ', N'Neymar giúp Brazil vào chung kết Copa America', N'Brazil thắng Peru 1-0 ở bán kết Copa America 2021, nhờ bàn duy nhất của Lucas Paqueta sau pha kiến tạo của Neymar.Cũng giống trận gặp Chile ở tứ kết, Brazil vượt qua Peru với tỷ số tối thiểu. Neymar và Lucas Paqueta lại ghi dấu giày vào bàn thắng duy nhất, giúp đội chủ nhà giành vé vào chung kết, gặp đội thắng trong cặp bán kết còn lại giữa Argentina và Colombia.

Không giống trận thắng Peru 4-0 ở vòng bảng, Brazil gặp nhiều khó khăn trong lần tái đấu đối thủ ở bán kết. Trong hiệp một, đội chủ nhà bỏ lỡ nhiều cơ hội, trong đó đáng kể nhất là pha đệm bóng cận thành hỏng ăn của Neymar cũng như hai tình huống Richarlison rê qua thủ môn nhưng không thể ghi bàn.Số đông cầu thủ lùi sâu của Peru không đồng nghĩa với chất lượng phòng ngự. Họ thủng lưới ở phút 35, sau khi ba cầu thủ đội khách không thể ngăn cản Neymar, để siêu sao Brazil rê qua rồi chuyền vào cấm địa cho Paqueta lập công trong thế trống trải.

Brazil dẫn 1-0 sau hiệp một, hiệp đấu họ dứt điểm trúng hướng cầu môn bảy lần. Nhưng sang hiệp hai, Peru vùng lên và kiểm soát thế trận. Đội khách liên tục đe dọa khung thành Ederson bằng những pha dứt điểm căng. Sau khi Lapadula thử tài thủ môn Brazil bằng cú sút chân trái trong vòng cấm, đến lượt Raziel Garcia liên tiếp sút xa buộc Ederson phải đẩy bóng cứu thua.rong hiệp hai, Brazil lên bóng rời rạc và chỉ một lần dứt điểm trúng hướng cầu môn. Hàng công chủ nhà gần như bị chia cắt hoàn toàn. Điểm nhấn mà Brazil tạo ra trong 45 phút cuối là những tình huống ngã trong vòng cấm của Neymar cũng như Richarlison, nhưng không có tiếng còi nào được cất lên.

Chiến thắng 1-0 là đủ để Brazil vào chung kết. Các học trò Tite dường như chưa chơi với 100% khả năng ở trận gặp Peru. Brazil chắc chắn sẽ thể hiện bộ mặt nghiêm túc hơn, khi đối đầu với Argentina hoặc Colombia ở chung kết.', NULL, CAST(N'2021-07-06 05:00:00.000' AS DateTime))
INSERT [dbo].[tblNews] ([news_ID], [category_ID], [author_ID], [title], [body], [picture], [date]) VALUES (2, 7, N'3         ', N'Găng tay của Donnarumma khác biệt thế nào', N'Thủ môn Gianluigi Donnarumma, với sự hỗ trợ từ đôi găng tay đầy gai, đã chơi ấn tượng để giúp Italy vào bán kết Euro 2021.Theo Marca, Donnarumma sử dụng găng tay mang tên Predator Pro Hibryd do Adidas sản xuất. Đôi găng có giá 142 USD (khoảng 3,2 triệu đồng) với 288 gai cao su ở mặt sau. Tại Euro 2021, bên cạnh Donnarumma, hai đồng nghiệp David De Gea và Kasper Schmeichel cũng sử dụng công cụ lao động này.', NULL, CAST(N'2021-07-06 06:00:00.000' AS DateTime))
INSERT [dbo].[tblNews] ([news_ID], [category_ID], [author_ID], [title], [body], [picture], [date]) VALUES (5, 1, N'3         ', N'Chuyên gia đề xuất giải pháp TP HCM dập dịch khi cách ly xã hội', N'TP HCM cần yêu cầu người dân thực hiện nghiêm quy định cách ly xã hội, thay đổi chiến lược xét nghiệm; tăng tốc truy vết, chuẩn bị cho tình huống xấu hơn.

Từ 0h ngày 9/7, TP HCM sẽ cách ly xã hội theo Chỉ thị 16 trong 15 ngày, để chống Covid-19. Các chuyên gia dịch tễ cho rằng, thành phố cần tận dụng triệt để thời gian này, để giải quyết nhiều bài toán khó đặt ra cùng lúc, nhằm cắt đứt các chuỗi lây nhiễm.

Tiến sĩ Nguyễn Thu Anh, Giám đốc Viện Nghiên cứu Y khoa Woolcock, Đại học Sydney (Australia), nêu 8 đề xuất với TP HCM trong nửa tháng cách ly xã hội.

Thứ nhất, TP HCM cần thực hiện nghiêm toàn bộ nội dung Chỉ thị 16. "Một trong những nguyên nhân sau hơn một tháng giãn cách xã hội, thành phố vẫn chưa dập dịch triệt để là bởi thực hiện không nghiêm quy định giãn cách", bà Thu Anh phân tích.

Tinh thần của chỉ thị 16 là "gia đình cách ly với gia đình, thôn bản cách ly với thôn bản, xã cách ly với xã, huyện cách ly với huyện". Các phân xưởng, nhà máy sản xuất đảm bảo khoảng cách an toàn, người lao động đeo khẩu trang, thực hiện khử trùng, diệt khuẩn. Người dân nên ở nhà, chỉ ra ngoài nếu thật sự cần thiết như mua thực phẩm, thuốc men, cấp cứu; hoặc làm việc tại nhà máy, cơ sở sản xuất, cơ sở kinh doanh dịch vụ, hàng hóa thiết yếu (những nơi không bị đóng cửa, dừng hoạt động).

Mọi người phải giữ khoảng cách tối thiểu 2 m khi giao tiếp; không tập trung quá 2 người ngoài phạm vi công sở, trường học, bệnh viện; dừng di chuyển từ vùng dịch đến địa phương khác; cơ bản dừng hoạt động vận chuyển hành khách công cộng.

Ngoài các quy định nêu trên, bà Thu Anh đề xuất thêm người dân được khuyến khích mua đủ nhu yếu phẩm dùng trong hai tuần để giảm mật độ đi lại; tăng cường ứng dụng công nghệ để giao hàng. Cơ sở bán hàng lưu động đến từng khu dân được cần được khuyến khích, để người dân hạn chế đi lại. Gia đình có một thành viên chỉ được đi chợ hoặc siêu thị một lần mỗi tuần; gia đình hai thành viên hai lần mỗi tuần. Các khu dân cư dùng chung hạ tầng như bếp nấu ăn, nhà tắm, nhà vệ sinh, khu xử lý rác... phải chia lịch cụ thể để không tập trung đông người.

Nhà chức trách cần ứng dụng công nghệ để đếm số người ra vào tại mỗi địa điểm (như thẻ, token key, mã QR...). Thành phố cần có chế tài cụ thể với những người vi phạm các quy định của Chỉ thị 16.', NULL, CAST(N'2021-07-06 07:00:00.000' AS DateTime))
INSERT [dbo].[tblNews] ([news_ID], [category_ID], [author_ID], [title], [body], [picture], [date]) VALUES (6, 3, N'3         ', N'Biden: Haiti ''rất đáng lo ngại'' sau vụ ám sát Tổng thống', N'Tổng thống Mỹ lên án vụ ám sát Tổng thống Haiti là "hành động tàn ác", nói tình hình chung Haiti "rất đáng lo ngại".

"Chúng tôi rất sốc và đau buồn khi nghe tin khủng khiếp về vụ ám sát Tổng thống Haiti Jovenel Moise và vụ tấn công Đệ nhất phu nhân Martine Moise", Tổng thống Mỹ Joe Biden phát biểu hôm 7/7.

"Chúng tôi lên án hành độc tàn ác này, tôi xin gửi lời chúc chân thành tới Đệ nhất phu nhân Moise, mong bà sớm bình phục. Nước Mỹ xin gửi lời chia buồn tới người dân Haiti, chúng tôi sẵn sàng hỗ trợ trong khi chúng ta tiếp tục nỗ lực vì sự an toàn và an ninh cho Haiti".', NULL, CAST(N'2021-08-06 09:53:00.000' AS DateTime))
INSERT [dbo].[tblNews] ([news_ID], [category_ID], [author_ID], [title], [body], [picture], [date]) VALUES (9, 9, N'4         ', N'Cán bộ xã 4 lần đi thi tốt nghiệp THPT', N'Ông Rơ Châm Dạy, 42 tuổi, đã 3 lần rớt tốt nghiệp THPT nên năm nay tiếp tục dự thi, quyết tâm lấy tấm bằng.

Chiều 7/7, bước ra khỏi điểm thi trường THCS thị trấn Phú Hòa, huyện Chư Păh, sau khi kết thúc môn Toán, ông Rơ Châm Dạy tỏ ra không vui. Người đàn ông người Jara ngồi nán lại trên ghế đá trước sân trường, thở dài. "Hy vọng được 5 điểm. Còn bài thi Văn sáng nay tôi làm khá tốt nên không lo lắm", ông nói.

Ông Dạy từng là công an viên, Phó chủ tịch UBND xã Ia Sao. Từ năm 2016 đến nay, ông làm cán bộ Tư pháp - Hộ tịch, UBND xã Ia Yok, huyện Ia Grai. Lúc trước ông học hệ 9+3, nên không có bằng cấp ba. Ông đăng ký học bổ túc hệ THPT nhằm chuẩn hóa bằng cấp. Tuy nhiên, kỳ thi năm 2005, 2006, 2015 ông vẫn rớt tốt nghiệp THPT do không chịu khó ôn luyện.

Thế nên suốt một năm qua, ngoài giờ làm việc ở cơ quan, tối đến ông học bài và làm bài tập. Cứ thứ bảy, chủ nhật ông lại mang sách vở đến Trung tâm Giáo dục thường xuyên huyện Ia Grai học. "Năm nay tôi quyết lấy bằng được tấm bằng cấp ba vì đã củng cố kiến thức tương đối tốt", thí sinh 42 tuổi nói.', NULL, CAST(N'2021-08-06 10:06:00.000' AS DateTime))
INSERT [dbo].[tblNews] ([news_ID], [category_ID], [author_ID], [title], [body], [picture], [date]) VALUES (10, 10, N'4         ', N'TP HCM đặt mục tiêu lấy 1,3 triệu mẫu xét nghiệm mỗi ngày', N'2.000 đội lấy mẫu của TP HCM có thể lấy 1,3 triệu mẫu xét nghiệm nCoV mỗi ngày, tập trung lấy mẫu có trọng tâm trọng điểm, đặc biệt là địa bàn có nguy cơ cao.

Chủ tịch UBND Nguyễn Thành Phong cho biết thông tin trên tại cuộc họp chuẩn bị triển khai chỉ thị 16 trên toàn thành phố, ngày 7/7. Năng lực xét nghiệm của thành phố hiện đạt 400.000 mẫu gộp một ngày. Từ ngày 26/5 đến nay, thành phố xét nghiệm hơn 1,7 triệu mẫu nhằm phát hiện sớm các trường hợp nhiễm.

TP HCM lập Trung tâm Điều phối xét nghiệm Covid-19 để khắc phục các hạn chế về xét nghiệm, phối hợp tổ chức lấy mẫu, nhập dữ liệu vào hệ thống phần mềm, vận chuyển và điều phối mẫu đến các phòng xét nghiệm, khắc phục sự tương thích giữa nhưngc phần mềm trả kết quả của các phòng xét nghiệm...', NULL, CAST(N'2021-08-06 10:07:00.000' AS DateTime))
INSERT [dbo].[tblNews] ([news_ID], [category_ID], [author_ID], [title], [body], [picture], [date]) VALUES (11, 7, N'4         ', N'Hoãn SEA Games 2021', N'Hội đồng thể thao Đông Nam Á nhất trí hoãn SEA Games 31 - dự kiến tổ chức cuối năm nay - vì diễn biến Covid-19 phức tạp trong khu vực.

Quyết định được thông qua trong phiên họp trực tuyến của Hội đồng Thể thao Đông Nam Á với Uỷ ban Olympic các quốc gia thành viên.

Trước đó, trong phiên họp trực tuyến hôm 9/6, Uỷ ban Olympic Việt Nam đã đưa ra phương án hoãn SEA Games 31, và lùi sự kiện sang tháng 7/2022.Covid-19 bùng phát trở lại ở Việt Nam, với hàng nghìn ca lây nhiễm cộng đồng từ 27/4. Thực tế đó cộng với việc dịch bệnh vẫn diễn biến phức tạp ở nhiều quốc gia Đông Nam Á khiến việc tập luyện của các VĐV bị ảnh hưởng, trong khi công tác vận động tiếp thị thương mại cũng khó đạt kết quả mong muốn.

Việc đảm bảo y tế cho khoảng 20.000 VĐV, HLV, quan chức, trọng tài, nhân viên hậu cần của các đoàn thể thao, chưa tính đến người hâm mộ, cũng là thách thức lớn. Trong tình hình đó, việc tổ chức SEA Games 2021 theo lịch trình dự kiến trong năm nay trở nên bất khả thi.

Đây là lần thứ hai kể từ khi SEA Games ra đời năm 1959, Đại hội không diễn ra trong năm lẻ. Năm 1963, giải cũng bị huỷ vì hoàn cảnh chính trị ở Cambodia. SEA Games năm 2023 sẽ diễn ra tại Campuchia vào tháng Năm.

SEA Games 31 ban đầu dự kiến diễn ra từ 21/11/2021 đến 2/12/2021 ở 12 tỉnh thành gồm Hà Nội, Bắc Giang, Bắc Ninh, Hà Nam, Hải Dương, Hoà Bình, Vĩnh Phúc, Phú Thọ, Hải Phòng, Nam Định, Ninh Bình và Quảng Ninh. Đại hội gồm 40 môn thi, phần lớn là các môn Olympic.

Tại SEA Games 30 ở Philippines năm 2019, Việt Nam đứng thứ hai toàn đoàn với 98 HC vàng, sau chủ nhà Philippines. Đó là lần đầu Việt Nam không phải là chủ nhà nhưng đứng trên Thái Lan trên bảng tổng sắp huy chương.', NULL, CAST(N'2021-08-06 21:46:00.000' AS DateTime))
INSERT [dbo].[tblNews] ([news_ID], [category_ID], [author_ID], [title], [body], [picture], [date]) VALUES (13, 5, N'2         ', N'Xe đạp tự lái trang bị công nghệ AI', N'Các kỹ sư ở Huawei cho ra đời mẫu xe đạp tự động trang bị công nghệ AI, cảm biến độ chính xác cao và camera nhận dạng hình ảnh.', NULL, CAST(N'2021-09-06 09:21:00.000' AS DateTime))
INSERT [dbo].[tblNews] ([news_ID], [category_ID], [author_ID], [title], [body], [picture], [date]) VALUES (14, 9, N'4         ', N'Thí sinh hoàn thành kỳ thi tốt nghiệp đợt 1', N'Gần một triệu thí sinh cả nước trải qua hai ngày thi tốt nghiệp THPT căng thẳng trong bối cảnh Covid-19 lan ra 55 tỉnh, thành với hơn 20.000 ca nhiễm. Chiều 6/7, thí sinh đến điểm thi trường THPT Nguyễn Thượng Hiền (quận Tân bình, TP HCM) làm thủ tục dự thi, đính chính sai sót nếu có và nghe phổ biến quy chế thi. Ảnh: Hữu Khoa

Năm nay do tác động của Covid-19, kỳ thi tốt nghiệp THPT chia thành hai đợt. Đợt 1 ngày 7-8/7, dành cho khoảng một triệu thí sinh, đợt 2 sẽ được tổ chức sau khi dịch bệnh đã ổn định.', NULL, CAST(N'2021-09-06 21:48:00.000' AS DateTime))
INSERT [dbo].[tblNews] ([news_ID], [category_ID], [author_ID], [title], [body], [picture], [date]) VALUES (15, 12, N'4         ', N'54 điểm đến không cần xin visa với hộ chiếu Việt Nam', N'Theo bảng xếp hạng toàn cầu mới nhất, hộ chiếu Việt Nam có thể nhập cảnh 54 quốc gia và vùng lãnh thổ không cần xin visa trước.

Trong bảng xếp hạng Henley Passport Index mới nhất công bố vào đầu tháng 7, hộ chiếu Việt Nam đứng thứ 94 trên tổng số 199 khắp thế giới. Theo đó, công dân Việt Nam được miễn thị thực (visa), chỉ cần xin visa khi đến (visa on arrival) hoặc visa điện tử (eTA) với tỉ lệ thành công gần như 100% tại 54 quốc gia và vùng lãnh thổ. Cụ thể, các điểm đến miễn thị thực với Việt Nam gồm: quần đảo Cook, Micronesia, Niue, Barbados, Haiti, Saint Vincent & Grenadines, Singapore, Brunei, Campuchia, Indonesia, Lào, Malaysia, Myanmar, Philippines, Thái Lan, Kazakhstan, Kyrgyzstan, Chile, Ecuador, Panama, Dominica.

Các điểm đến chấp nhận visa on arrival: quần đảo Marshall, quần đảo Palau, Samoa, Tuvalu, Iran, Kuwait, St Lucia, Maldives, Nepal, Tajikistan, đông Timor, Bolivia, quần đảo Cape Verde, quần đảo Comoro, Guinea-Bissau, Kenya, Madagascar, Malawi, Mauritania, Mauritius, Mozambique, Namibia, Rwanda, Senegal, Seychelles, Sierra Leone, Somalia, Tanzania, Togo, Uganda, Zambia.

Các điểm đến chấp nhận eTA: đảo Đài Loan (Trung Quốc), Sri Lanka.

Henley Passport Index là bảng xếp hạng uy tín và thường niên thuộc công ty Henley & Partners. Số liệu thống kê để hoàn thành bảng xếp hạng hộ chiếu này được dựa vào dữ liệu độc quyền được cung cấp bởi Hiệp hội Vận tải Hàng không Quốc tế (IATA). Đến nay, Henley Passport Index đã có "thâm niên" 16 năm.', NULL, CAST(N'2021-09-06 21:50:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblNews] OFF
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([user_ID], [username], [password], [power], [fullname], [address], [email], [phone]) VALUES (1, N'admin', N'1', 0, N'Nguyen Van A', N'FPT Hoa Lac', N'abc@gmail.com', N'0123456789')
INSERT [dbo].[tblUser] ([user_ID], [username], [password], [power], [fullname], [address], [email], [phone]) VALUES (2, N'mod1', N'1', 1, N'Nguyen Van B', N'Ha Noi ', N'xyz@gmail.com', N'0987654321')
INSERT [dbo].[tblUser] ([user_ID], [username], [password], [power], [fullname], [address], [email], [phone]) VALUES (3, N'mod2', N'1', 1, N'Nguyen Van C', N'Vinh Phuc', N'abcd@gmail.com', N'098765656')
INSERT [dbo].[tblUser] ([user_ID], [username], [password], [power], [fullname], [address], [email], [phone]) VALUES (4, N'mod3', N'1', 1, N'Nguyen Van C', N'Ha Noi', N'xxyyzz@gmail.com', N'038123456')
INSERT [dbo].[tblUser] ([user_ID], [username], [password], [power], [fullname], [address], [email], [phone]) VALUES (5, N'ronaldo', N'1', 2, N'Ronaldo', N'Bo Dao Nha', N'ronaldo@gmail.com', N'0976999222')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
