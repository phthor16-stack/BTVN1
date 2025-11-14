-- Sử dụng CSDL sakila
USE sakila;

------------------------------------------------------------
-- Nhiệm vụ 1: Giao dịch có Giá trị Cao
------------------------------------------------------------
SELECT 
    customer_id,
    amount,
    payment_date
FROM payment
WHERE payment_date > '2005-08-01'
  AND amount > 9.00
ORDER BY amount DESC;

------------------------------------------------------------
-- Nhiệm vụ 2: Tìm kiếm các Giao dịch Bất thường
------------------------------------------------------------
SELECT 
    payment_id,
    customer_id,
    staff_id,
    amount
FROM payment
WHERE amount = 0.00
   OR (staff_id = 1 AND amount > 10.00)
ORDER BY customer_id ASC;

------------------------------------------------------------
-- Nhiệm vụ 3: Phân tích & Nhận định
------------------------------------------------------------
/*
Khách hàng VIP:
- Các bản ghi ở Nhiệm vụ 1 là những giao dịch có giá trị lớn (amount > 9.00) trong khoảng thời gian gần đây.
- Khi sắp xếp kết quả theo amount giảm dần (DESC), các giao dịch có số tiền cao nhất sẽ nằm ở đầu danh sách.
- Điều này giúp quản lý dễ dàng nhận ra nhóm khách hàng chi tiêu nhiều, từ đó:
  + Xem xét họ như nhóm khách hàng VIP.
  + Thiết kế chương trình chăm sóc riêng (voucher, ưu đãi, tích điểm…).
  + Ưu tiên giữ chân những khách hàng có đóng góp doanh thu lớn.

Giao dịch Bất thường:
- Các giao dịch có amount = 0.00 có thể là:
  + Giao dịch khuyến mãi (miễn phí / tặng kèm).
  + Điều chỉnh kỹ thuật (refund, bù trừ, ghi nhận lại hệ thống).
  + Hoặc là lỗi nhập liệu / lỗi hệ thống.
- Quản lý cần quan tâm vì:
  + Nếu là khuyến mãi: phải kiểm soát số lượng và hiệu quả chương trình.
  + Nếu là lỗi: cần phát hiện sớm để tránh thất thoát doanh thu hoặc sai lệch báo cáo.
  + Nếu xuất hiện nhiều giao dịch 0.00 bất thường ở một nhân viên/cửa hàng: có thể là dấu hiệu rủi ro gian lận.

Hiệu suất Nhân viên (staff_id = 1):
- Ở Nhiệm vụ 2, nhân viên có staff_id = 1 xuất hiện trong các giao dịch có amount > 10.00,
  điều này cho thấy họ có xử lý những giao dịch giá trị cao.
- Đây có thể là dấu hiệu tốt:
  + Nhân viên được tin tưởng giao cho các giao dịch quan trọng.
  + Có khả năng tư vấn, chốt đơn hàng giá trị lớn.
- Tuy nhiên, để kết luận chắc chắn về hiệu suất của nhân viên này, cần thêm:
  + Tổng số giao dịch và tổng doanh thu mà staff_id = 1 xử lý so với các nhân viên khác.
  + Tỷ lệ lỗi, refund, hoặc giao dịch amount = 0.00 liên quan đến nhân viên này.
  + Thời gian làm việc, ca làm, số lượng khách phục vụ, phản hồi của khách hàng.
- Chỉ khi kết hợp các chỉ số này, ta mới đánh giá toàn diện về hiệu quả và độ tin cậy của nhân viên.
*/
