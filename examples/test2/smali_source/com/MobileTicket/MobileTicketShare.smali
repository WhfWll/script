.class public Lcom/MobileTicket/MobileTicketShare;
.super Landroid/app/Activity;
.source "MobileTicketShare.java"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/MobileTicket/MobileTicketShare;

    const v1, 0xd

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public native checkStat(Ljava/io/File;)V
.end method

.method public native onCreate(Landroid/os/Bundle;)V
.end method

.method public native shareMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
.end method
