# HZQRegexTestter
` *有劳大家的小手抖一抖，给颗小星星★★～！谢谢！^ —— ^`

` *正则表达式验证工具，一句话立即验证,绿色、安全！。谢谢大家的支持和反馈，如有任何问题请留言。`

` *QQ:276635035`

使用方法：
```oc 
/**
 *  1.用户名 - 2.密码 （英文、数字都可，且不包含特殊字符
 */
+ (BOOL)validateStrWithRange:(NSString *)range str:(NSString *)str;

/**
 *  真实姓名验证
 * （只能是汉字且10个字内）
 */
+ (BOOL)validateRealName:(NSString *)name;

/**
 *  邮箱验证
 */
+ (BOOL)validateEmail:(NSString *)email;

/**
 *  手机号码验证
 */
+ (BOOL)validatePhone:(NSString *)phone;

/**
 *  身份证号码验证
 */
+ (BOOL)validateIDCardNumber:(NSString *)value;

```
