.class public Lcn/domob/android/ads/DomobAdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobAdManager$ErrorCode;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO:Ljava/lang/String; = "audio"

.field public static final ACTION_CALL:Ljava/lang/String; = "call"

.field public static final ACTION_IN_APP:Ljava/lang/String; = "inapp"

.field public static final ACTION_LAUNCH_APP:Ljava/lang/String; = "la"

.field public static final ACTION_MAIL:Ljava/lang/String; = "mail"

.field public static final ACTION_MAP:Ljava/lang/String; = "map"

.field public static final ACTION_MARKET:Ljava/lang/String; = "market"

.field public static final ACTION_SMS:Ljava/lang/String; = "sms"

.field public static final ACTION_URL:Ljava/lang/String; = "url"

.field public static final ACTION_VIDEO:Ljava/lang/String; = "video"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "f"

.field public static final GENDER_MALE:Ljava/lang/String; = "m"

.field public static final SDK_VER:Ljava/lang/String; = "20141125"

.field public static final TEST_EMULATOR:Ljava/lang/String; = "emulator"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static getBirthday()Ljava/util/GregorianCalendar;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getEndpoint()Ljava/lang/String;
    .registers 1

    .prologue
    .line 217
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGender()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    const-string v0, ""

    return-object v0
.end method

.method public static getPostalCode()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    const-string v0, ""

    return-object v0
.end method

.method public static getPublisherId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 233
    invoke-static {}, Lcn/domob/android/ads/c/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAllowUseOfLocation(Z)V
    .registers 1
    .param p0, "isAllowed"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    return-void
.end method

.method public static setBirthday(III)V
    .registers 5
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p0, v1, p2}, Ljava/util/GregorianCalendar;->set(III)V

    .line 166
    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->setBirthday(Ljava/util/GregorianCalendar;)V

    .line 167
    return-void
.end method

.method public static setBirthday(Ljava/util/GregorianCalendar;)V
    .registers 1
    .param p0, "birthday"    # Ljava/util/GregorianCalendar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    return-void
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;)V

    .line 213
    invoke-static {p0}, Lcn/domob/android/f/d;->a(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static setGender(Ljava/lang/String;)V
    .registers 1
    .param p0, "gender"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    return-void
.end method

.method public static setIsTestMode(Z)V
    .registers 1
    .param p0, "testMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .registers 1
    .param p0, "pc"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    return-void
.end method

.method public static setPublisherId(Ljava/lang/String;)V
    .registers 2
    .param p0, "_publisherID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcn/domob/android/ads/h;->a()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/h;->b(Ljava/lang/String;)V

    .line 106
    return-void
.end method
