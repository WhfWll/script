.class final Lss/ss/ss/v$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:[Lss/ss/ss/v$a;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lss/ss/ss/v$a;

    iput-object v0, p0, Lss/ss/ss/v$a;->a:[Lss/ss/ss/v$a;

    iput v1, p0, Lss/ss/ss/v$a;->b:I

    iput v1, p0, Lss/ss/ss/v$a;->c:I

    return-void
.end method

.method constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lss/ss/ss/v$a;->a:[Lss/ss/ss/v$a;

    iput p1, p0, Lss/ss/ss/v$a;->b:I

    and-int/lit8 v0, p2, 0x7

    if-nez v0, :cond_e

    const/16 v0, 0x8

    :cond_e
    iput v0, p0, Lss/ss/ss/v$a;->c:I

    return-void
.end method

.method static synthetic a(Lss/ss/ss/v$a;)[Lss/ss/ss/v$a;
    .registers 2

    iget-object v0, p0, Lss/ss/ss/v$a;->a:[Lss/ss/ss/v$a;

    return-object v0
.end method

.method static synthetic b(Lss/ss/ss/v$a;)I
    .registers 2

    iget v0, p0, Lss/ss/ss/v$a;->b:I

    return v0
.end method

.method static synthetic c(Lss/ss/ss/v$a;)I
    .registers 2

    iget v0, p0, Lss/ss/ss/v$a;->c:I

    return v0
.end method
