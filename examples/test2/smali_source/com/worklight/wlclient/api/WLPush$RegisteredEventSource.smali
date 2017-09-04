.class Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;
.super Ljava/lang/Object;
.source "WLPush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegisteredEventSource"
.end annotation


# instance fields
.field private adapter:Ljava/lang/String;

.field private eventSource:Ljava/lang/String;

.field private eventSourceListener:Lcom/worklight/wlclient/api/WLEventSourceListener;

.field final synthetic this$0:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    const v1, 0x4db

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/api/WLPush;)V
    .registers 2

    .prologue
    .line 698
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->adapter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Lcom/worklight/wlclient/api/WLEventSourceListener;
    .registers 2
    .param p0, "x0"    # Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    .prologue
    .line 698
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSourceListener:Lcom/worklight/wlclient/api/WLEventSourceListener;

    return-object v0
.end method


# virtual methods
.method public native getAdapter()Ljava/lang/String;
.end method

.method public native getEventSource()Ljava/lang/String;
.end method

.method public native getEventSourceListener()Lcom/worklight/wlclient/api/WLEventSourceListener;
.end method

.method public native setAdapter(Ljava/lang/String;)V
.end method

.method public native setEventSource(Ljava/lang/String;)V
.end method

.method public native setEventSourceListener(Lcom/worklight/wlclient/api/WLEventSourceListener;)V
.end method
