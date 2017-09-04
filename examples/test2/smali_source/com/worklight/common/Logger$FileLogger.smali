.class Lcom/worklight/common/Logger$FileLogger;
.super Ljava/util/logging/Logger;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/common/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/common/Logger$FileLogger$ClientLogFormatter;
    }
.end annotation


# static fields
.field private static filePath:Ljava/lang/String;

.field private static formatter:Lcom/worklight/common/Logger$FileLogger$ClientLogFormatter;

.field private static singleton:Lcom/worklight/common/Logger$FileLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/Logger$FileLogger;

    const v1, 0x4a8

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static native log(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public native log(Ljava/util/logging/LogRecord;)V
.end method
