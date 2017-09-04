.class Lcom/worklight/androidgap/plugin/BusyIndicator$1;
.super Ljava/lang/Object;
.source "BusyIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/BusyIndicator;->show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;

    const v1, 0x458

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/plugin/BusyIndicator;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 41
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
