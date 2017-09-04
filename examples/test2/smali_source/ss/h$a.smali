.class public final Lss/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lss/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lss/ss/gq/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/h$a;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lss/h;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lss/h$a;->a:Ljava/util/List;

    iget-object v0, p0, Lss/h$a;->a:Ljava/util/List;

    invoke-static {p1}, Lss/h;->a(Lss/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lss/h;->b(Lss/h;)Lss/ss/gq/f;

    move-result-object v0

    iput-object v0, p0, Lss/h$a;->b:Lss/ss/gq/f;

    return-void
.end method

.method static synthetic a(Lss/h$a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lss/h$a;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lss/h$a;)Lss/ss/gq/f;
    .registers 2

    iget-object v0, p0, Lss/h$a;->b:Lss/ss/gq/f;

    return-object v0
.end method


# virtual methods
.method public a(Lss/ss/gq/f;)Lss/h$a;
    .registers 2

    iput-object p1, p0, Lss/h$a;->b:Lss/ss/gq/f;

    return-object p0
.end method

.method public a()Lss/h;
    .registers 3

    new-instance v0, Lss/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/h;-><init>(Lss/h$a;Lss/i;)V

    return-object v0
.end method
