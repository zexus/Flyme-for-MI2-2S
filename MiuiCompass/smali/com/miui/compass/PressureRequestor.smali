.class public Lcom/miui/compass/PressureRequestor;
.super Ljava/lang/Object;
.source "PressureRequestor.java"


# instance fields
.field private final CALIBRATE_ALTITUDE_TIME_OUT:I

.field private MODULUS:Ljava/lang/String;

.field private PUBLIC_KEY:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPressureRequest:Lorg/apache/http/client/methods/HttpGet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0xafc8

    iput v0, p0, Lcom/miui/compass/PressureRequestor;->CALIBRATE_ALTITUDE_TIME_OUT:I

    .line 33
    const-string v0, "65537"

    iput-object v0, p0, Lcom/miui/compass/PressureRequestor;->PUBLIC_KEY:Ljava/lang/String;

    .line 34
    const-string v0, "91260911122270127234998794195592609888073958094373010756710379192625130836419604330763856136850049911413204124223615647519195442106322096484402456126786185173546280736241523122414918124588757446468517350617150284870882239165712536054685980495005286151635113622783814352878825904710689839570887752503335468013"

    iput-object v0, p0, Lcom/miui/compass/PressureRequestor;->MODULUS:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/miui/compass/PressureRequestor;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 108
    iget-object v4, p0, Lcom/miui/compass/PressureRequestor;->MODULUS:Ljava/lang/String;

    .line 109
    .local v4, "modulus":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/compass/PressureRequestor;->PUBLIC_KEY:Ljava/lang/String;

    .line 110
    .local v7, "publicKey":Ljava/lang/String;
    const/16 v3, 0x7f

    .line 111
    .local v3, "maxEncryptSize":I
    if-eqz p1, :cond_0

    if-eqz v4, :cond_0

    if-nez v7, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v8

    .line 115
    :cond_1
    const-string v9, "UTF-8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    array-length v9, v9

    if-gt v9, v3, :cond_0

    .line 119
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 120
    .local v5, "n":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "e":Ljava/math/BigInteger;
    const-string v8, "0"

    invoke-virtual {v8, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 122
    .local v6, "ptext":[B
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v6}, Ljava/math/BigInteger;-><init>([B)V

    .line 123
    .local v2, "m1":Ljava/math/BigInteger;
    invoke-virtual {v2, v1, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 124
    .local v0, "c":Ljava/math/BigInteger;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    const/16 v10, 0x8

    invoke-static {v9, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private getSLP(Ljava/lang/String;)F
    .locals 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 93
    const/high16 v3, -0x40800000    # -1.0f

    .line 94
    .local v3, "slp":F
    const/4 v4, 0x0

    .line 96
    .local v4, "slpString":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "pressure"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 98
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 104
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return v3

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "Compass:PressureRequestor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fomat json failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 101
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "Compass:PressureRequestor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse data to float: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abortPressureRequest()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/compass/PressureRequestor;->mPressureRequest:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miui/compass/PressureRequestor;->mPressureRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 131
    :cond_0
    return-void
.end method

.method public requestPressure(JDD)I
    .locals 19
    .param p1, "startTime"    # J
    .param p3, "longitude"    # D
    .param p5, "latitude"    # D

    .prologue
    .line 44
    const-string v13, "Compass:PressureRequestor"

    const-string v14, "doCalibrateAltitude begin request"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v10, 0x0

    .line 47
    .local v10, "requestString":Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "http://weatherapi.market.xiaomi.com/wtr-v2/utils/pressure?latitude="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/miui/compass/PressureRequestor;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "longitude="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/miui/compass/PressureRequestor;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&encoded=latitude,longitude"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 55
    const/4 v4, 0x0

    .line 56
    .local v4, "error":I
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v13, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/miui/compass/PressureRequestor;->mPressureRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 57
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 58
    .local v5, "httpParams":Lorg/apache/http/params/HttpParams;
    const-wide/32 v14, 0xafc8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, p1

    sub-long v14, v14, v16

    long-to-int v12, v14

    .line 59
    .local v12, "timeOut":I
    invoke-static {v5, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 60
    invoke-static {v5, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 61
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 64
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    const-string v8, ""

    .line 66
    .local v8, "page":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/compass/PressureRequestor;->mPressureRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v2, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 67
    .local v11, "response":Lorg/apache/http/HttpResponse;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 68
    .local v6, "in":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "line":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_0

    .line 70
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 71
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_0

    .line 50
    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "error":I
    .end local v5    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "page":Ljava/lang/String;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v12    # "timeOut":I
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "Compass:PressureRequestor"

    const-string v14, "Error to encrypt location"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const/4 v4, 0x4

    .line 89
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return v4

    .line 73
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "error":I
    .restart local v5    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "page":Ljava/lang/String;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v12    # "timeOut":I
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 74
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/miui/compass/PressureRequestor;->getSLP(Ljava/lang/String;)F

    move-result v9

    .line 75
    .local v9, "pressure":F
    const/4 v13, 0x0

    cmpg-float v13, v9, v13

    if-gtz v13, :cond_1

    .line 76
    const/4 v4, 0x2

    .line 80
    :goto_2
    const-string v13, "Compass:PressureRequestor"

    const-string v14, "doCalibrateAltitude request complete"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/miui/compass/PressureRequestor;->mPressureRequest:Lorg/apache/http/client/methods/HttpGet;

    goto :goto_1

    .line 78
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/compass/PressureRequestor;->mContext:Landroid/content/Context;

    const/16 v14, 0x270f

    invoke-static {v13, v9, v14}, Lcom/miui/compass/CompassPreferences;->saveSeaLevelPressure(Landroid/content/Context;FI)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 81
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "pressure":F
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v3

    .line 82
    .local v3, "e":Ljava/net/SocketException;
    :try_start_4
    const-string v13, "Compass:PressureRequestor"

    const-string v14, "User canceled"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/miui/compass/PressureRequestor;->mPressureRequest:Lorg/apache/http/client/methods/HttpGet;

    goto :goto_1

    .line 83
    .end local v3    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v3

    .line 84
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x2

    .line 85
    :try_start_5
    const-string v13, "Compass:PressureRequestor"

    const-string v14, "Exception"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 87
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/miui/compass/PressureRequestor;->mPressureRequest:Lorg/apache/http/client/methods/HttpGet;

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/miui/compass/PressureRequestor;->mPressureRequest:Lorg/apache/http/client/methods/HttpGet;

    throw v13
.end method
