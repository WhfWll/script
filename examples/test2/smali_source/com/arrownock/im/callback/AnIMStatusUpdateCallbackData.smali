.class public Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;
.super Ljava/lang/Object;


# instance fields
.field private exception:Lcom/arrownock/exception/ArrownockException;

.field private status:Lcom/arrownock/im/AnIMStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;

    const v1, 0xcf

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lcom/arrownock/im/AnIMStatus;Lcom/arrownock/exception/ArrownockException;)V
    .registers 4
    .param p1, "status"    # Lcom/arrownock/im/AnIMStatus;
    .param p2, "exception"    # Lcom/arrownock/exception/ArrownockException;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/arrownock/im/AnIMStatus;->OFFLINE:Lcom/arrownock/im/AnIMStatus;

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;->status:Lcom/arrownock/im/AnIMStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;->exception:Lcom/arrownock/exception/ArrownockException;

    iput-object p1, p0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;->status:Lcom/arrownock/im/AnIMStatus;

    iput-object p2, p0, Lcom/arrownock/im/callback/AnIMStatusUpdateCallbackData;->exception:Lcom/arrownock/exception/ArrownockException;

    return-void
.end method


# virtual methods
.method public native getException()Lcom/arrownock/exception/ArrownockException;
.end method

.method public native getStatus()Lcom/arrownock/im/AnIMStatus;
.end method
