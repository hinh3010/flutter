## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Stateless Widget

- StatelessWidget hiểu nôm na là Widget tĩnh và nó không thể tự thay đổi được
  những gì mà nó hiển thị sau khi đã được Render xong.
- Widget này cần 1 hàm Widget build(BuildContext context) để render dữ liệu lên màn hình
- Hàm build chỉ được gọi 1 lần khi ứng dụng đang hoạt động,
  => dữ liệu chỉ được render 1 và không thay đổi suốt quá trình sử dụng ứng dụng
- Dữ liệu hiển thị bạn có thể hard code hoặc truyền thông qua hàm Constructors của
  class và dữ liệu này sẽ không thay đổi suốt quá trình hiển thị trên màn hình.

1. Không có state
2. Là widget tĩnh - Là bất biến - Dữ liệu cứng
3. Được cấu hình bởi parent của nó
4. Không thể tự thay đổi dữ liệu của nó

<!-- sử dụng khi -->

- Hiển thị dữ liệu cứng. ex: Appbar, Title của màn hình vvv
- Sử dụng trong StatefulWidget để khi StatefulWidget thay đổi trạng thái
  thì các item con sẽ được render lại.

# Stateful Widget

- StatefulWidget là 1 Widget động và nó có thể thay đổi những gì đang hiển thị
  bằng cách thay đổi State của chính nó.
- Widget này cần hàm State<StatefulWidget> createState() để cung cấp
  State cho StatefulWidget
- StatefulWidget quản lý trạng thái UI thông qua State, khi State thay đổi
  thì StatefulWidget sẽ render lại UI mà nó đang hiển thị.

1. Có state object
2. Là widget động

<!-- sử dụng khi -->

- sử dụng StatefulWidget trong Widget con của ListView để các item của chúng có thể
  tự động cập nhật trạng thái mà không cần cả ListView thay đổi trạng thái.

<!-- vòng đời - lifecycle -->

1. contructor function
2. createState()
3. initState()
4. didChangeDepedencies(()
5. dirty
6. build()
7. clean -> setState() -> dirty
8. deactivate()
9. dispose()

# folder assets

- assets

  - data
  - fonts
  - images
    1.0x -- chứa ảnh cho màn hình nhỏ
    2.0x -- chứa ảnh cho màn hình tb
    3.0x -- chứa ảnh cho màn hình lớn

- vào pubspec.yaml cấu hình assets

# cài package : https://pub.dev/

- vào pubspec.yaml tìm dependencies
  thêm vào thư viện : phiên bản
  shared_preferences: ^2.0.6

- import
  // ignore: unused_import
  import 'package:shared_preferences/shared_preferences.dart' ;
