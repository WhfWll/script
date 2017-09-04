.class public final Ljk;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public a:Ljava/lang/String;

.field public a:Ljavax/net/SocketFactory;

.field public a:Z

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Ljk;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljk;->a:Z

    const/16 v0, 0x1e

    iput v0, p0, Ljk;->b:I

    return-void
.end method
