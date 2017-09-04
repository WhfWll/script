.class Lorg/apache/cordova/FileTransfer$1;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/FileTransfer;->upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/FileTransfer;

.field final synthetic val$chunkedMode:Z

.field final synthetic val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

.field final synthetic val$fileKey:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$headers:Lorg/json/JSONObject;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$params:Lorg/json/JSONObject;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$trustEveryone:Z

.field final synthetic val$url:Ljava/net/URL;

.field final synthetic val$useHttps:Z


# direct methods
.method constructor <init>(Lorg/apache/cordova/FileTransfer;Lorg/apache/cordova/FileTransfer$RequestContext;ZZLjava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 15

    .prologue
    .line 233
    iput-object p1, p0, Lorg/apache/cordova/FileTransfer$1;->this$0:Lorg/apache/cordova/FileTransfer;

    iput-object p2, p0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    iput-boolean p3, p0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    iput-boolean p4, p0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    iput-object p5, p0, Lorg/apache/cordova/FileTransfer$1;->val$url:Ljava/net/URL;

    iput-object p6, p0, Lorg/apache/cordova/FileTransfer$1;->val$target:Ljava/lang/String;

    iput-object p7, p0, Lorg/apache/cordova/FileTransfer$1;->val$headers:Lorg/json/JSONObject;

    iput-object p8, p0, Lorg/apache/cordova/FileTransfer$1;->val$params:Lorg/json/JSONObject;

    iput-object p9, p0, Lorg/apache/cordova/FileTransfer$1;->val$fileKey:Ljava/lang/String;

    iput-object p10, p0, Lorg/apache/cordova/FileTransfer$1;->val$fileName:Ljava/lang/String;

    iput-object p11, p0, Lorg/apache/cordova/FileTransfer$1;->val$mimeType:Ljava/lang/String;

    iput-object p12, p0, Lorg/apache/cordova/FileTransfer$1;->val$source:Ljava/lang/String;

    iput-boolean p13, p0, Lorg/apache/cordova/FileTransfer$1;->val$chunkedMode:Z

    iput-object p14, p0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 41

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    move/from16 v36, v0

    if-eqz v36, :cond_f

    .line 473
    :cond_e
    :goto_e
    return-void

    .line 238
    :cond_f
    const/4 v10, 0x0

    .line 239
    .local v10, "conn":Ljava/net/HttpURLConnection;
    const/16 v19, 0x0

    .line 240
    .local v19, "oldHostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/16 v20, 0x0

    .line 241
    .local v20, "oldSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/16 v34, 0x0

    .line 242
    .local v34, "totalBytes":I
    const/4 v14, -0x1

    .line 245
    .local v14, "fixedLength":I
    :try_start_17
    new-instance v28, Lorg/apache/cordova/FileUploadResult;

    invoke-direct/range {v28 .. v28}, Lorg/apache/cordova/FileUploadResult;-><init>()V

    .line 246
    .local v28, "result":Lorg/apache/cordova/FileUploadResult;
    new-instance v24, Lorg/apache/cordova/FileProgressResult;

    invoke-direct/range {v24 .. v24}, Lorg/apache/cordova/FileProgressResult;-><init>()V

    .line 250
    .local v24, "progress":Lorg/apache/cordova/FileProgressResult;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2a5

    .line 252
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v36, v0

    if-nez v36, :cond_285

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$url:Ljava/net/URL;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v36

    move-object/from16 v0, v36

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v10, v0

    .line 274
    :goto_40
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 277
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 280
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 283
    const-string v36, "POST"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 284
    const-string v36, "Content-Type"

    const-string v37, "multipart/form-data;boundary=+++++"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$target:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, "cookie":Ljava/lang/String;
    if-eqz v11, :cond_7e

    .line 289
    const-string v36, "Cookie"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v36, v0

    if-eqz v36, :cond_91

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$headers:Lorg/json/JSONObject;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    # invokes: Lorg/apache/cordova/FileTransfer;->addHeadersToRequest(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    invoke-static {v10, v0}, Lorg/apache/cordova/FileTransfer;->access$200(Ljava/net/URLConnection;Lorg/json/JSONObject;)V

    .line 301
    :cond_91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_96
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_96} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_96} :catch_416
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_96} :catch_5f6
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_96} :catch_6f2
    .catchall {:try_start_17 .. :try_end_96} :catchall_769

    .line 303
    .local v4, "beforeData":Ljava/lang/StringBuilder;
    :try_start_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$params:Lorg/json/JSONObject;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_a0
    :goto_a0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_114

    .line 304
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 305
    .local v18, "key":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    const-string v37, "headers"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_a0

    .line 307
    const-string v36, "--"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "+++++"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v36, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x22

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    const-string v36, "\r\n"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$params:Lorg/json/JSONObject;

    move-object/from16 v36, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v36, "\r\n"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_105
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_105} :catch_106
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_105} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_105} :catch_416
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_105} :catch_6f2
    .catchall {:try_start_96 .. :try_end_105} :catchall_769

    goto :goto_a0

    .line 314
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v18    # "key":Ljava/lang/Object;
    :catch_106
    move-exception v12

    .line 315
    .local v12, "e":Lorg/json/JSONException;
    :try_start_107
    const-string v36, "FileTransfer"

    invoke-virtual {v12}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v12    # "e":Lorg/json/JSONException;
    :cond_114
    const-string v36, "--"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "+++++"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v36, "Content-Disposition: form-data; name=\""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$fileKey:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\";"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v36, " filename=\""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$fileName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const/16 v37, 0x22

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v36, "Content-Type: "

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$mimeType:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\r\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const-string v37, "UTF-8"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 323
    .local v5, "beforeDataBytes":[B
    const-string v36, "\r\n--+++++--\r\n"

    const-string v37, "UTF-8"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v33

    .line 327
    .local v33, "tailParamsBytes":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->this$0:Lorg/apache/cordova/FileTransfer;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$source:Ljava/lang/String;

    move-object/from16 v37, v0

    # invokes: Lorg/apache/cordova/FileTransfer;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    invoke-static/range {v36 .. v37}, Lorg/apache/cordova/FileTransfer;->access$300(Lorg/apache/cordova/FileTransfer;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v30

    .line 329
    .local v30, "sourceInputStream":Ljava/io/InputStream;
    array-length v0, v5

    move/from16 v36, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v37, v0

    add-int v31, v36, v37

    .line 330
    .local v31, "stringLength":I
    move-object/from16 v0, v30

    instance-of v0, v0, Ljava/io/FileInputStream;

    move/from16 v36, v0

    if-eqz v36, :cond_1d4

    .line 331
    move-object/from16 v0, v30

    check-cast v0, Ljava/io/FileInputStream;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v36, v0

    add-int v14, v36, v31

    .line 332
    const/16 v36, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileProgressResult;->setLengthComputable(Z)V

    .line 333
    int-to-long v0, v14

    move-wide/from16 v36, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileProgressResult;->setTotal(J)V

    .line 335
    :cond_1d4
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Content Length: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$chunkedMode:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2b6

    sget v36, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v37, 0x8

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_208

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_2b6

    :cond_208
    const/16 v35, 0x1

    .line 340
    .local v35, "useChunkedMode":Z
    :goto_20a
    if-nez v35, :cond_212

    const/16 v36, -0x1

    move/from16 v0, v36

    if-ne v14, v0, :cond_2ba

    :cond_212
    const/16 v35, 0x1

    .line 342
    :goto_214
    if-eqz v35, :cond_2be

    .line 343
    const/16 v36, 0x4000

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 346
    const-string v36, "Transfer-Encoding"

    const-string v37, "chunked"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v10, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_228
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_22b
    .catch Ljava/io/FileNotFoundException; {:try_start_107 .. :try_end_22b} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_22b} :catch_416
    .catch Lorg/json/JSONException; {:try_start_107 .. :try_end_22b} :catch_5f6
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_22b} :catch_6f2
    .catchall {:try_start_107 .. :try_end_22b} :catchall_769

    .line 353
    const/16 v29, 0x0

    .line 355
    .local v29, "sendStream":Ljava/io/OutputStream;
    :try_start_22d
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_238
    .catchall {:try_start_22d .. :try_end_238} :catchall_40e

    .line 357
    :try_start_238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    move/from16 v36, v0

    if-eqz v36, :cond_338

    .line 358
    monitor-exit v37
    :try_end_247
    .catchall {:try_start_238 .. :try_end_247} :catchall_4b6

    .line 399
    :try_start_247
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 400
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v29 .. v29}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V
    :try_end_24d
    .catch Ljava/io/FileNotFoundException; {:try_start_247 .. :try_end_24d} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_24d} :catch_416
    .catch Lorg/json/JSONException; {:try_start_247 .. :try_end_24d} :catch_5f6
    .catch Ljava/lang/Throwable; {:try_start_247 .. :try_end_24d} :catch_6f2
    .catchall {:try_start_247 .. :try_end_24d} :catchall_769

    .line 459
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 460
    :try_start_252
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v37
    :try_end_264
    .catchall {:try_start_252 .. :try_end_264} :catchall_335

    .line 463
    if-eqz v10, :cond_e

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object v15, v10

    .line 467
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 468
    .local v15, "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 469
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_e

    .line 259
    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v5    # "beforeDataBytes":[B
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .end local v29    # "sendStream":Ljava/io/OutputStream;
    .end local v30    # "sourceInputStream":Ljava/io/InputStream;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    :cond_285
    :try_start_285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$url:Ljava/net/URL;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 260
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    # invokes: Lorg/apache/cordova/FileTransfer;->trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    invoke-static {v15}, Lorg/apache/cordova/FileTransfer;->access$000(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v20

    .line 262
    invoke-virtual {v15}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v19

    .line 264
    # getter for: Lorg/apache/cordova/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$100()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 265
    move-object v10, v15

    .line 266
    goto/16 :goto_40

    .line 270
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_2a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$url:Ljava/net/URL;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v36

    move-object/from16 v0, v36

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    goto/16 :goto_40

    .line 339
    .restart local v4    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v5    # "beforeDataBytes":[B
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v30    # "sourceInputStream":Ljava/io/InputStream;
    .restart local v31    # "stringLength":I
    .restart local v33    # "tailParamsBytes":[B
    :cond_2b6
    const/16 v35, 0x0

    goto/16 :goto_20a

    .line 340
    .restart local v35    # "useChunkedMode":Z
    :cond_2ba
    const/16 v35, 0x0

    goto/16 :goto_214

    .line 348
    :cond_2be
    invoke-virtual {v10, v14}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_2c1
    .catch Ljava/io/FileNotFoundException; {:try_start_285 .. :try_end_2c1} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_285 .. :try_end_2c1} :catch_416
    .catch Lorg/json/JSONException; {:try_start_285 .. :try_end_2c1} :catch_5f6
    .catch Ljava/lang/Throwable; {:try_start_285 .. :try_end_2c1} :catch_6f2
    .catchall {:try_start_285 .. :try_end_2c1} :catchall_769

    goto/16 :goto_228

    .line 441
    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v5    # "beforeDataBytes":[B
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v24    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .end local v30    # "sourceInputStream":Ljava/io/InputStream;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    :catch_2c3
    move-exception v12

    .line 442
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_2c4
    sget v36, Lorg/apache/cordova/FileTransfer;->FILE_NOT_FOUND_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$source:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$target:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v10}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v13

    .line 443
    .local v13, "error":Lorg/json/JSONObject;
    const-string v36, "FileTransfer"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/cordova/api/PluginResult;

    sget-object v38, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_2fd
    .catchall {:try_start_2c4 .. :try_end_2fd} :catchall_769

    .line 459
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 460
    :try_start_302
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v37
    :try_end_314
    .catchall {:try_start_302 .. :try_end_314} :catchall_6e9

    .line 463
    if-eqz v10, :cond_e

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object v15, v10

    .line 467
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 468
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 469
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_e

    .line 461
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "error":Lorg/json/JSONObject;
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v5    # "beforeDataBytes":[B
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v24    # "progress":Lorg/apache/cordova/FileProgressResult;
    .restart local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .restart local v29    # "sendStream":Ljava/io/OutputStream;
    .restart local v30    # "sourceInputStream":Ljava/io/InputStream;
    .restart local v31    # "stringLength":I
    .restart local v33    # "tailParamsBytes":[B
    .restart local v35    # "useChunkedMode":Z
    :catchall_335
    move-exception v36

    :try_start_336
    monitor-exit v37
    :try_end_337
    .catchall {:try_start_336 .. :try_end_337} :catchall_335

    throw v36

    .line 360
    :cond_338
    :try_start_338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentOutputStream:Ljava/io/OutputStream;

    .line 361
    monitor-exit v37
    :try_end_345
    .catchall {:try_start_338 .. :try_end_345} :catchall_4b6

    .line 363
    :try_start_345
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 364
    array-length v0, v5

    move/from16 v36, v0

    add-int v34, v34, v36

    .line 367
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 368
    .local v8, "bytesAvailable":I
    const/16 v36, 0x4000

    move/from16 v0, v36

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 369
    .local v7, "bufferSize":I
    new-array v6, v7, [B

    .line 372
    .local v6, "buffer":[B
    const/16 v36, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v6, v1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 374
    .local v9, "bytesRead":I
    const-wide/16 v22, 0x0

    .line 375
    .local v22, "prevBytesRead":J
    :goto_369
    if-lez v9, :cond_4b9

    .line 376
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileUploadResult;->setBytesSent(J)V

    .line 377
    const/16 v36, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v6, v1, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 378
    add-int v34, v34, v9

    .line 379
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide/32 v38, 0x19000

    add-long v38, v38, v22

    cmp-long v36, v36, v38

    if-lez v36, :cond_3c3

    .line 380
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 381
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Uploaded "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " of "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " bytes"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_3c3
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->available()I

    move-result v8

    .line 384
    const/16 v36, 0x4000

    move/from16 v0, v36

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 385
    const/16 v36, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v6, v1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 388
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileProgressResult;->setLoaded(J)V

    .line 389
    new-instance v25, Lorg/apache/cordova/api/PluginResult;

    sget-object v36, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v24 .. v24}, Lorg/apache/cordova/FileProgressResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v37

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 390
    .local v25, "progressResult":Lorg/apache/cordova/api/PluginResult;
    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_40c
    .catchall {:try_start_345 .. :try_end_40c} :catchall_40e

    goto/16 :goto_369

    .line 399
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v8    # "bytesAvailable":I
    .end local v9    # "bytesRead":I
    .end local v22    # "prevBytesRead":J
    .end local v25    # "progressResult":Lorg/apache/cordova/api/PluginResult;
    :catchall_40e
    move-exception v36

    :try_start_40f
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 400
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v29 .. v29}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    throw v36
    :try_end_416
    .catch Ljava/io/FileNotFoundException; {:try_start_40f .. :try_end_416} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_40f .. :try_end_416} :catch_416
    .catch Lorg/json/JSONException; {:try_start_40f .. :try_end_416} :catch_5f6
    .catch Ljava/lang/Throwable; {:try_start_40f .. :try_end_416} :catch_6f2
    .catchall {:try_start_40f .. :try_end_416} :catchall_769

    .line 445
    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v5    # "beforeDataBytes":[B
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v24    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .end local v29    # "sendStream":Ljava/io/OutputStream;
    .end local v30    # "sourceInputStream":Ljava/io/InputStream;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    :catch_416
    move-exception v12

    .line 446
    .local v12, "e":Ljava/io/IOException;
    :try_start_417
    sget v36, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$source:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$target:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v10}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v13

    .line 447
    .restart local v13    # "error":Lorg/json/JSONObject;
    const-string v36, "FileTransfer"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Failed after uploading "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " of "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " bytes."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/cordova/api/PluginResult;

    sget-object v38, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_47e
    .catchall {:try_start_417 .. :try_end_47e} :catchall_769

    .line 459
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 460
    :try_start_483
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v37
    :try_end_495
    .catchall {:try_start_483 .. :try_end_495} :catchall_6ec

    .line 463
    if-eqz v10, :cond_e

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object v15, v10

    .line 467
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 468
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 469
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_e

    .line 361
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "error":Lorg/json/JSONObject;
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v5    # "beforeDataBytes":[B
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v24    # "progress":Lorg/apache/cordova/FileProgressResult;
    .restart local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .restart local v29    # "sendStream":Ljava/io/OutputStream;
    .restart local v30    # "sourceInputStream":Ljava/io/InputStream;
    .restart local v31    # "stringLength":I
    .restart local v33    # "tailParamsBytes":[B
    .restart local v35    # "useChunkedMode":Z
    :catchall_4b6
    move-exception v36

    :try_start_4b7
    monitor-exit v37
    :try_end_4b8
    .catchall {:try_start_4b7 .. :try_end_4b8} :catchall_4b6

    :try_start_4b8
    throw v36

    .line 395
    .restart local v6    # "buffer":[B
    .restart local v7    # "bufferSize":I
    .restart local v8    # "bytesAvailable":I
    .restart local v9    # "bytesRead":I
    .restart local v22    # "prevBytesRead":J
    :cond_4b9
    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 396
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v36, v0

    add-int v34, v34, v36

    .line 397
    invoke-virtual/range {v29 .. v29}, Ljava/io/OutputStream;->flush()V
    :try_end_4ca
    .catchall {:try_start_4b8 .. :try_end_4ca} :catchall_40e

    .line 399
    :try_start_4ca
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v30 .. v30}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 400
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v29 .. v29}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentOutputStream:Ljava/io/OutputStream;

    .line 403
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Sent "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " of "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v26

    .line 408
    .local v26, "responseCode":I
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "response code: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v36, "FileTransfer"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "response headers: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_542
    .catch Ljava/io/FileNotFoundException; {:try_start_4ca .. :try_end_542} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_4ca .. :try_end_542} :catch_416
    .catch Lorg/json/JSONException; {:try_start_4ca .. :try_end_542} :catch_5f6
    .catch Ljava/lang/Throwable; {:try_start_4ca .. :try_end_542} :catch_6f2
    .catchall {:try_start_4ca .. :try_end_542} :catchall_769

    .line 410
    const/16 v16, 0x0

    .line 412
    .local v16, "inStream":Ljava/io/InputStream;
    :try_start_544
    # invokes: Lorg/apache/cordova/FileTransfer;->getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    invoke-static {v10}, Lorg/apache/cordova/FileTransfer;->access$500(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v16

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_54f
    .catchall {:try_start_544 .. :try_end_54f} :catchall_5e3

    .line 414
    :try_start_54f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    move/from16 v36, v0

    if-eqz v36, :cond_5aa

    .line 415
    monitor-exit v37
    :try_end_55e
    .catchall {:try_start_54f .. :try_end_55e} :catchall_64c

    .line 429
    :try_start_55e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 430
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V
    :try_end_56f
    .catch Ljava/io/FileNotFoundException; {:try_start_55e .. :try_end_56f} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_55e .. :try_end_56f} :catch_416
    .catch Lorg/json/JSONException; {:try_start_55e .. :try_end_56f} :catch_5f6
    .catch Ljava/lang/Throwable; {:try_start_55e .. :try_end_56f} :catch_6f2
    .catchall {:try_start_55e .. :try_end_56f} :catchall_769

    .line 459
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 460
    :try_start_574
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v37
    :try_end_586
    .catchall {:try_start_574 .. :try_end_586} :catchall_5a7

    .line 463
    if-eqz v10, :cond_e

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object v15, v10

    .line 467
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 468
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 469
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_e

    .line 461
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :catchall_5a7
    move-exception v36

    :try_start_5a8
    monitor-exit v37
    :try_end_5a9
    .catchall {:try_start_5a8 .. :try_end_5a9} :catchall_5a7

    throw v36

    .line 417
    :cond_5aa
    :try_start_5aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 418
    monitor-exit v37
    :try_end_5b7
    .catchall {:try_start_5aa .. :try_end_5b7} :catchall_64c

    .line 420
    :try_start_5b7
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    const/16 v36, 0x400

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v37

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->max(II)I

    move-result v36

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 421
    .local v21, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v36, 0x400

    move/from16 v0, v36

    new-array v6, v0, [B

    .line 422
    const/4 v9, 0x0

    .line 424
    :goto_5d1
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_64f

    .line 425
    const/16 v36, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-virtual {v0, v6, v1, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5e2
    .catchall {:try_start_5b7 .. :try_end_5e2} :catchall_5e3

    goto :goto_5d1

    .line 429
    .end local v21    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_5e3
    move-exception v36

    :try_start_5e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 430
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    throw v36
    :try_end_5f6
    .catch Ljava/io/FileNotFoundException; {:try_start_5e4 .. :try_end_5f6} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_5e4 .. :try_end_5f6} :catch_416
    .catch Lorg/json/JSONException; {:try_start_5e4 .. :try_end_5f6} :catch_5f6
    .catch Ljava/lang/Throwable; {:try_start_5e4 .. :try_end_5f6} :catch_6f2
    .catchall {:try_start_5e4 .. :try_end_5f6} :catchall_769

    .line 450
    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v5    # "beforeDataBytes":[B
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v8    # "bytesAvailable":I
    .end local v9    # "bytesRead":I
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v16    # "inStream":Ljava/io/InputStream;
    .end local v22    # "prevBytesRead":J
    .end local v24    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v26    # "responseCode":I
    .end local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .end local v29    # "sendStream":Ljava/io/OutputStream;
    .end local v30    # "sourceInputStream":Ljava/io/InputStream;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    :catch_5f6
    move-exception v12

    .line 451
    .local v12, "e":Lorg/json/JSONException;
    :try_start_5f7
    const-string v36, "FileTransfer"

    invoke-virtual {v12}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/cordova/api/PluginResult;

    sget-object v38, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct/range {v37 .. v38}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_614
    .catchall {:try_start_5f7 .. :try_end_614} :catchall_769

    .line 459
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 460
    :try_start_619
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v37
    :try_end_62b
    .catchall {:try_start_619 .. :try_end_62b} :catchall_6ef

    .line 463
    if-eqz v10, :cond_e

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object v15, v10

    .line 467
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 468
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 469
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_e

    .line 418
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v4    # "beforeData":Ljava/lang/StringBuilder;
    .restart local v5    # "beforeDataBytes":[B
    .restart local v6    # "buffer":[B
    .restart local v7    # "bufferSize":I
    .restart local v8    # "bytesAvailable":I
    .restart local v9    # "bytesRead":I
    .restart local v11    # "cookie":Ljava/lang/String;
    .restart local v16    # "inStream":Ljava/io/InputStream;
    .restart local v22    # "prevBytesRead":J
    .restart local v24    # "progress":Lorg/apache/cordova/FileProgressResult;
    .restart local v26    # "responseCode":I
    .restart local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .restart local v29    # "sendStream":Ljava/io/OutputStream;
    .restart local v30    # "sourceInputStream":Ljava/io/InputStream;
    .restart local v31    # "stringLength":I
    .restart local v33    # "tailParamsBytes":[B
    .restart local v35    # "useChunkedMode":Z
    :catchall_64c
    move-exception v36

    :try_start_64d
    monitor-exit v37
    :try_end_64e
    .catchall {:try_start_64d .. :try_end_64e} :catchall_64c

    :try_start_64e
    throw v36

    .line 427
    .restart local v21    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_64f
    const-string v36, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_658
    .catchall {:try_start_64e .. :try_end_658} :catchall_5e3

    move-result-object v27

    .line 429
    .local v27, "responseString":Ljava/lang/String;
    :try_start_659
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer$RequestContext;->currentInputStream:Ljava/io/InputStream;

    .line 430
    # invokes: Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V
    invoke-static/range {v16 .. v16}, Lorg/apache/cordova/FileTransfer;->access$400(Ljava/io/Closeable;)V

    .line 433
    const-string v36, "FileTransfer"

    const-string v37, "got response from server"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v36, "FileTransfer"

    const/16 v37, 0x0

    const/16 v38, 0x100

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v39

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(II)I

    move-result v38

    move-object/from16 v0, v27

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileUploadResult;->setResponseCode(I)V

    .line 438
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileUploadResult;->setResponse(Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/cordova/api/PluginResult;

    sget-object v38, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v28 .. v28}, Lorg/apache/cordova/FileUploadResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v39

    invoke-direct/range {v37 .. v39}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_6ae
    .catch Ljava/io/FileNotFoundException; {:try_start_659 .. :try_end_6ae} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_659 .. :try_end_6ae} :catch_416
    .catch Lorg/json/JSONException; {:try_start_659 .. :try_end_6ae} :catch_5f6
    .catch Ljava/lang/Throwable; {:try_start_659 .. :try_end_6ae} :catch_6f2
    .catchall {:try_start_659 .. :try_end_6ae} :catchall_769

    .line 459
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 460
    :try_start_6b3
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v37
    :try_end_6c5
    .catchall {:try_start_6b3 .. :try_end_6c5} :catchall_6e6

    .line 463
    if-eqz v10, :cond_e

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object v15, v10

    .line 467
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 468
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 469
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_e

    .line 461
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :catchall_6e6
    move-exception v36

    :try_start_6e7
    monitor-exit v37
    :try_end_6e8
    .catchall {:try_start_6e7 .. :try_end_6e8} :catchall_6e6

    throw v36

    .end local v4    # "beforeData":Ljava/lang/StringBuilder;
    .end local v5    # "beforeDataBytes":[B
    .end local v6    # "buffer":[B
    .end local v7    # "bufferSize":I
    .end local v8    # "bytesAvailable":I
    .end local v9    # "bytesRead":I
    .end local v11    # "cookie":Ljava/lang/String;
    .end local v16    # "inStream":Ljava/io/InputStream;
    .end local v21    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v22    # "prevBytesRead":J
    .end local v24    # "progress":Lorg/apache/cordova/FileProgressResult;
    .end local v26    # "responseCode":I
    .end local v27    # "responseString":Ljava/lang/String;
    .end local v28    # "result":Lorg/apache/cordova/FileUploadResult;
    .end local v29    # "sendStream":Ljava/io/OutputStream;
    .end local v30    # "sourceInputStream":Ljava/io/InputStream;
    .end local v31    # "stringLength":I
    .end local v33    # "tailParamsBytes":[B
    .end local v35    # "useChunkedMode":Z
    .local v12, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "error":Lorg/json/JSONObject;
    :catchall_6e9
    move-exception v36

    :try_start_6ea
    monitor-exit v37
    :try_end_6eb
    .catchall {:try_start_6ea .. :try_end_6eb} :catchall_6e9

    throw v36

    .local v12, "e":Ljava/io/IOException;
    :catchall_6ec
    move-exception v36

    :try_start_6ed
    monitor-exit v37
    :try_end_6ee
    .catchall {:try_start_6ed .. :try_end_6ee} :catchall_6ec

    throw v36

    .end local v13    # "error":Lorg/json/JSONObject;
    .local v12, "e":Lorg/json/JSONException;
    :catchall_6ef
    move-exception v36

    :try_start_6f0
    monitor-exit v37
    :try_end_6f1
    .catchall {:try_start_6f0 .. :try_end_6f1} :catchall_6ef

    throw v36

    .line 453
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_6f2
    move-exception v32

    .line 455
    .local v32, "t":Ljava/lang/Throwable;
    :try_start_6f3
    sget v36, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$source:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$target:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    # invokes: Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    invoke-static {v0, v1, v2, v10}, Lorg/apache/cordova/FileTransfer;->access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v13

    .line 456
    .restart local v13    # "error":Lorg/json/JSONObject;
    const-string v36, "FileTransfer"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$context:Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v36, v0

    new-instance v37, Lorg/apache/cordova/api/PluginResult;

    sget-object v38, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual/range {v36 .. v37}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    :try_end_72e
    .catchall {:try_start_6f3 .. :try_end_72e} :catchall_769

    .line 459
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 460
    :try_start_733
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v37
    :try_end_745
    .catchall {:try_start_733 .. :try_end_745} :catchall_766

    .line 463
    if-eqz v10, :cond_e

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    move-object v15, v10

    .line 467
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 468
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 469
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto/16 :goto_e

    .line 461
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :catchall_766
    move-exception v36

    :try_start_767
    monitor-exit v37
    :try_end_768
    .catchall {:try_start_767 .. :try_end_768} :catchall_766

    throw v36

    .line 459
    .end local v13    # "error":Lorg/json/JSONObject;
    .end local v32    # "t":Ljava/lang/Throwable;
    :catchall_769
    move-exception v36

    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v37

    monitor-enter v37

    .line 460
    :try_start_76f
    # getter for: Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;
    invoke-static {}, Lorg/apache/cordova/FileTransfer;->access$700()Ljava/util/HashMap;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$objectId:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v37
    :try_end_77d
    .catchall {:try_start_76f .. :try_end_77d} :catchall_79d

    .line 463
    if-eqz v10, :cond_79c

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$trustEveryone:Z

    move/from16 v37, v0

    if-eqz v37, :cond_79c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/FileTransfer$1;->val$useHttps:Z

    move/from16 v37, v0

    if-eqz v37, :cond_79c

    move-object v15, v10

    .line 467
    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    .line 468
    .restart local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 469
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 470
    .end local v15    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_79c
    throw v36

    .line 461
    :catchall_79d
    move-exception v36

    :try_start_79e
    monitor-exit v37
    :try_end_79f
    .catchall {:try_start_79e .. :try_end_79f} :catchall_79d

    throw v36
.end method
