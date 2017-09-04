.class public final Ljf;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field private a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljf;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljf;->a:Ljava/util/List;

    iput-object p3, p0, Ljf;->a:[B

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a()[B
    .registers 2

    iget-object v0, p0, Ljf;->a:[B

    return-object v0
.end method
