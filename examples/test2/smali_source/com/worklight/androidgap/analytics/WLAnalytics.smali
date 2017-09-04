.class public Lcom/worklight/androidgap/analytics/WLAnalytics;
.super Ljava/lang/Object;
.source "WLAnalytics.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TEALEAF_CLASS:Ljava/lang/String; = "com.tl.uic.Tealeaf"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/analytics/WLAnalytics;

    const v1, 0x443

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    .line 0
    const-class v0, Lcom/worklight/androidgap/analytics/WLAnalytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/analytics/WLAnalytics;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native initializeTealeaf(Lcom/worklight/androidgap/WLDroidGap;)V
.end method
