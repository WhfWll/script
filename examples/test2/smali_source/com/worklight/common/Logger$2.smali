.class final Lcom/worklight/common/Logger$2;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/common/Logger;->setLevel(Lcom/worklight/common/Logger$LEVEL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$desiredLevel:Lcom/worklight/common/Logger$LEVEL;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/worklight/common/Logger$2;

    const v1, 0x4a1

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method constructor <init>(Lcom/worklight/common/Logger$LEVEL;)V
    .registers 2

    .prologue
    .line 382
    iput-object p1, p0, Lcom/worklight/common/Logger$2;->val$desiredLevel:Lcom/worklight/common/Logger$LEVEL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
