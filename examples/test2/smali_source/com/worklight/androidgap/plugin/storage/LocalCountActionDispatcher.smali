.class public Lcom/worklight/androidgap/plugin/storage/LocalCountActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;
.source "LocalCountActionDispatcher.java"


# static fields
.field private static final SQL_LOCALCOUNT:Ljava/lang/String; = "SELECT COUNT(*) FROM {0} WHERE {1} > 0"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/androidgap/plugin/storage/LocalCountActionDispatcher;

    const v1, 0x491

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 24
    const-string v0, "localCount"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected native getFormattedQuery(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected native logResult(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
