.class public Lcom/bontai/mobiads/ads/entity/AdDomain;
.super Lcom/bontai/mobiads/ads/entity/EntityBase;
.source "AdDomain.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/lidroid/xutils/db/annotation/Table;
    name = "adDomain"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x19da61f33cc1711fL


# instance fields
.field private adCompany:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "adCompany"
    .end annotation
.end field

.field private adId:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "adId"
    .end annotation
.end field

.field private adName:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "adName"
    .end annotation
.end field

.field private clickUrl:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "clickUrl"
    .end annotation
.end field

.field private ext1:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "ext1"
    .end annotation
.end field

.field private ext2:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "ext2"
    .end annotation
.end field

.field private ext3:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "ext3"
    .end annotation
.end field

.field private ext4:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "ext4"
    .end annotation
.end field

.field private ext5:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "ext5"
    .end annotation
.end field

.field private ext6:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "ext6"
    .end annotation
.end field

.field private imgDiskUrl:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "imgDiskUrl"
    .end annotation
.end field

.field private imgUrl:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "imgUrl"
    .end annotation
.end field

.field private marginBottom:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "marginBottom"
    .end annotation
.end field

.field private serviceType:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "serviceType"
    .end annotation
.end field

.field private serviceUrl:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "serviceUrl"
    .end annotation
.end field

.field private showSkipBtn:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "showSkipBtn"
    .end annotation
.end field

.field private skipTime:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "skipTime"
    .end annotation
.end field

.field private targetImgUrl:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "targetImgUrl"
    .end annotation
.end field

.field private targetUrl:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "targetUrl"
    .end annotation
.end field

.field private thirdClickUrls:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "thirdClickUrls"
    .end annotation
.end field

.field private thirdViewUrls:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "thirdViewUrls"
    .end annotation
.end field

.field private viewUrl:Ljava/lang/String;
    .annotation runtime Lcom/lidroid/xutils/db/annotation/Column;
        column = "viewUrl"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/bontai/mobiads/ads/entity/AdDomain;

    const v1, 0xf0

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/bontai/mobiads/ads/entity/EntityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public native getAdCompany()Ljava/lang/String;
.end method

.method public native getAdId()Ljava/lang/String;
.end method

.method public native getAdName()Ljava/lang/String;
.end method

.method public native getClickUrl()Ljava/lang/String;
.end method

.method public native getExt1()Ljava/lang/String;
.end method

.method public native getExt2()Ljava/lang/String;
.end method

.method public native getExt3()Ljava/lang/String;
.end method

.method public native getExt4()Ljava/lang/String;
.end method

.method public native getExt5()Ljava/lang/String;
.end method

.method public native getExt6()Ljava/lang/String;
.end method

.method public native getImgDiskUrl()Ljava/lang/String;
.end method

.method public native getImgUrl()Ljava/lang/String;
.end method

.method public native getMarginBottom()Ljava/lang/String;
.end method

.method public native getServiceType()Ljava/lang/String;
.end method

.method public native getServiceUrl()Ljava/lang/String;
.end method

.method public native getShowSkipBtn()Ljava/lang/String;
.end method

.method public native getSkipTime()Ljava/lang/String;
.end method

.method public native getTargetImgUrl()Ljava/lang/String;
.end method

.method public native getTargetUrl()Ljava/lang/String;
.end method

.method public native getThirdClickUrls()Ljava/lang/String;
.end method

.method public native getThirdViewUrls()Ljava/lang/String;
.end method

.method public native getViewUrl()Ljava/lang/String;
.end method

.method public native setAdCompany(Ljava/lang/String;)V
.end method

.method public native setAdId(Ljava/lang/String;)V
.end method

.method public native setAdName(Ljava/lang/String;)V
.end method

.method public native setClickUrl(Ljava/lang/String;)V
.end method

.method public native setExt1(Ljava/lang/String;)V
.end method

.method public native setExt2(Ljava/lang/String;)V
.end method

.method public native setExt3(Ljava/lang/String;)V
.end method

.method public native setExt4(Ljava/lang/String;)V
.end method

.method public native setExt5(Ljava/lang/String;)V
.end method

.method public native setExt6(Ljava/lang/String;)V
.end method

.method public native setImgDiskUrl(Ljava/lang/String;)V
.end method

.method public native setImgUrl(Ljava/lang/String;)V
.end method

.method public native setMarginBottom(Ljava/lang/String;)V
.end method

.method public native setServiceType(Ljava/lang/String;)V
.end method

.method public native setServiceUrl(Ljava/lang/String;)V
.end method

.method public native setShowSkipBtn(Ljava/lang/String;)V
.end method

.method public native setSkipTime(Ljava/lang/String;)V
.end method

.method public native setTargetImgUrl(Ljava/lang/String;)V
.end method

.method public native setTargetUrl(Ljava/lang/String;)V
.end method

.method public native setThirdClickUrls(Ljava/lang/String;)V
.end method

.method public native setThirdViewUrls(Ljava/lang/String;)V
.end method

.method public native setViewUrl(Ljava/lang/String;)V
.end method
