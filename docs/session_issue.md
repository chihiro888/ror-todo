# session issue

### issue

```
GET METHODでsessionを保存して
GET METHODでsessionを呼び込んだら作動する

GET METHODでsessionを保存して
POST METHODでsessionを呼び込んだら作動しない
```

### reference

https://stackoverflow.com/questions/18422182/rails-sessions-not-saving  

https://qiita.com/naberina/items/d3b14521e78e0daccdcd  
```
If the security token doesn't match what was expected, the session will be reset
```

### fix 

```javascript
function set_csrftoken() {
  $.ajaxPrefilter(function (options, originalOptions, jqXHR) {
    if (!options.crossDomain) {
      const token = $('meta[name="csrf-token"]').attr('content');
      if (token) {
        return jqXHR.setRequestHeader('X-CSRF-Token', token);
      }
    }
  });
}

function send_ajax() {
  set_csrftoken();
  // ajax logic
}
```