import $ from "jquery"
var jQuery = $
$.put = function(url, data, callbackSucess, callbackerror){
  if( jQuery.isFunction(data) ){
    callbackSucess = data
    callbackerror = callbackSucess
    data = undefined
  }
  return $.ajax({
      url: url,
      data:data,
      // if you use jquery_ujs you don't need this
      // beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
      type: "PUT",
      dataType: 'json',
      success: callbackSucess,
      error:callbackerror
  });
}
$.delete = function(url, data, callbackSucess, callbackerror){
  if( jQuery.isFunction(data) ){
    callbackSucess = data
    callbackerror = callbackSucess
    data = undefined
  }
  return $.ajax({
      url: url,
      data:data,
      type: "DELETE",
      dataType: 'json',
      success: callbackSucess,
      error:callbackerror
  });
}
$.post = function(url, data, callbackSucess, callbackerror){
  if( jQuery.isFunction(data) ){
    callbackSucess = data
    callbackerror = callbackSucess
    data = undefined
  }
  return $.ajax({
      url: url,
      data:data,
      // beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
      type: "POST",
      dataType: 'json',
      success: callbackSucess,
      error:callbackerror
  });
}
export default $
