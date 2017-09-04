.class public Lcom/worklight/wlclient/api/WLProcedureInvocationData;
.super Ljava/lang/Object;
.source "WLProcedureInvocationData.java"


# instance fields
.field private adapter:Ljava/lang/String;

.field private compressResponse:Z

.field private parameters:[Ljava/lang/Object;

.field private procedure:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;

    const v1, 0x4d2

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "adapter"    # Ljava/lang/String;
    .param p2, "procedure"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->compressResponse:Z

    .line 42
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->adapter:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->procedure:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "adapter"    # Ljava/lang/String;
    .param p2, "procedure"    # Ljava/lang/String;
    .param p3, "compressResponse"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->compressResponse:Z

    .line 53
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->adapter:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->procedure:Ljava/lang/String;

    .line 55
    iput-boolean p3, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->compressResponse:Z

    .line 56
    return-void
.end method


# virtual methods
.method native getInvocationDataMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public native setCompressResponse(Z)V
.end method

.method public native setParameters([Ljava/lang/Object;)V
.end method
