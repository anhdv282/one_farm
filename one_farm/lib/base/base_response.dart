class BaseResponse<T> {

  T data;

  bool success;

  String message;

  BaseResponse({ this.data, this.success, this.message });

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
        data: json["data"] as T,
        success: json["success"] as bool,
        message: json["message"] as String
    );
  }

}