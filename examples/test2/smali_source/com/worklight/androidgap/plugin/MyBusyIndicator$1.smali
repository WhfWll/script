.class Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;
.super Ljava/lang/Object;
.source "MyBusyIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/MyBusyIndicator;->show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;

    const v1, 0x45f

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/androidgap/plugin/MyBusyIndicator;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->val$text:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
