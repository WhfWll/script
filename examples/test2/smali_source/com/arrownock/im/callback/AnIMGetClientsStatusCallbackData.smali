.class public Lcom/arrownock/im/callback/AnIMGetClientsStatusCallbackData;
.super Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;


# instance fields
.field clientsStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/callback/AnIMGetClientsStatusCallbackData;

    const v1, 0xc7

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(ZLcom/arrownock/exception/ArrownockException;Ljava/util/Map;)V
    .registers 5
    .param p1, "error"    # Z
    .param p2, "exception"    # Lcom/arrownock/exception/ArrownockException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/arrownock/exception/ArrownockException;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "clientsStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1, p2}, Lcom/arrownock/im/callback/AnIMBaseRequestCallbackData;-><init>(ZLcom/arrownock/exception/ArrownockException;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMGetClientsStatusCallbackData;->clientsStatus:Ljava/util/Map;

    iput-object p3, p0, Lcom/arrownock/im/callback/AnIMGetClientsStatusCallbackData;->clientsStatus:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public native getClientsStatus()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
