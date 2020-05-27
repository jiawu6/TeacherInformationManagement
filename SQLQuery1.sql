select * from TB_Admin
select ID, Content, UserID, UserName, PostTime from TB_Message order by PostTime desc;
select * from TB_Message;
--select TB_Message.ID, TB_Message.Content, TB_Message.UserID, u.UserName, TB_Message,PostTime from TB_Message left join (
--	select ID, TeacherName as UserName from TB_Teacher where ID = 2 and 'teacher' = 'teacher'
--	union 
--	select ID, UserName from TB_Admin where  ID = 2 and 'teacher' = 'admin'
--) as u on u.ID = TB_Message.ID;
--delete from TB_Message
insert into TB_Message(ID, Content, UserID, UserName, PostTime) values (2, 'Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', 2, 'Jack', '2020-05-05 12:01:00');
insert into TB_Message(ID, Content, UserID, UserName, PostTime) values (3, 'Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', 3, 'Herry', '2020-05-05 13:01:00');
insert into TB_Message(ID, Content, UserID, UserName, PostTime) values (4, 'Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', 4, 'Herry', '2020-05-05 14:23:00');
insert into TB_Message(ID, Content, UserID, UserName, PostTime) values (5, 'Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', 5, 'bruce', '2020-05-05 15:01:00');
insert into TB_Message(ID, Content, UserID, UserName, PostTime) values (6, 'Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', 6, 'Daniel', '2020-05-05 13:11:00');
insert into TB_Message(ID, Content, UserID, UserName, PostTime) values (7, 'Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', 7, 'Lucy', '2020-05-05 16:00:00');
