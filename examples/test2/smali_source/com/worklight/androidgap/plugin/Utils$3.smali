.class Lcom/worklight/androidgap/plugin/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/Utils;->loadSkin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/Utils;

.field final synthetic val$activity:Lcom/worklight/androidgap/WLDroidGap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/Utils$3;

    const v1, 0x46c

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/plugin/Utils;Lcom/worklight/androidgap/WLDroidGap;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 278
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/Utils$3;->this$0:Lcom/worklight/androidgap/plugin/Utils;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/Utils$3;->val$activity:Lcom/worklight/androidgap/WLDroidGap;

    iput-object p3, p0, Lcom/worklight/androidgap/plugin/Utils$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
