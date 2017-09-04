.class public Lss/ag$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lss/y;

.field private b:Ljava/lang/String;

.field private c:Lss/w$a;

.field private d:Lss/ai;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lss/ag$a;->b:Ljava/lang/String;

    new-instance v0, Lss/w$a;

    invoke-direct {v0}, Lss/w$a;-><init>()V

    iput-object v0, p0, Lss/ag$a;->c:Lss/w$a;

    return-void
.end method

.method private constructor <init>(Lss/ag;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lss/ag;->a(Lss/ag;)Lss/y;

    move-result-object v0

    iput-object v0, p0, Lss/ag$a;->a:Lss/y;

    invoke-static {p1}, Lss/ag;->b(Lss/ag;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lss/ag$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lss/ag;->c(Lss/ag;)Lss/ai;

    move-result-object v0

    iput-object v0, p0, Lss/ag$a;->d:Lss/ai;

    invoke-static {p1}, Lss/ag;->d(Lss/ag;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lss/ag$a;->e:Ljava/lang/Object;

    invoke-static {p1}, Lss/ag;->e(Lss/ag;)Lss/w;

    move-result-object v0

    invoke-virtual {v0}, Lss/w;->b()Lss/w$a;

    move-result-object v0

    iput-object v0, p0, Lss/ag$a;->c:Lss/w$a;

    return-void
.end method

.method synthetic constructor <init>(Lss/ag;Lss/ah;)V
    .registers 3

    invoke-direct {p0, p1}, Lss/ag$a;-><init>(Lss/ag;)V

    return-void
.end method

.method static synthetic a(Lss/ag$a;)Lss/y;
    .registers 2

    iget-object v0, p0, Lss/ag$a;->a:Lss/y;

    return-object v0
.end method

.method static synthetic b(Lss/ag$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lss/ag$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lss/ag$a;)Lss/w$a;
    .registers 2

    iget-object v0, p0, Lss/ag$a;->c:Lss/w$a;

    return-object v0
.end method

.method static synthetic d(Lss/ag$a;)Lss/ai;
    .registers 2

    iget-object v0, p0, Lss/ag$a;->d:Lss/ai;

    return-object v0
.end method

.method static synthetic e(Lss/ag$a;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lss/ag$a;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lss/ag$a;
    .registers 9

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2f
    :goto_2f
    invoke-static {p1}, Lss/y;->e(Ljava/lang/String;)Lss/y;

    move-result-object v0

    if-nez v0, :cond_71

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2f

    :cond_71
    invoke-virtual {p0, v0}, Lss/ag$a;->a(Lss/y;)Lss/ag$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lss/ag$a;
    .registers 4

    iget-object v0, p0, Lss/ag$a;->c:Lss/w$a;

    invoke-virtual {v0, p1, p2}, Lss/w$a;->c(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lss/ai;)Lss/ag$a;
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    if-eqz p2, :cond_3f

    invoke-static {p1}, Lss/ss/gK/m;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    if-nez p2, :cond_66

    invoke-static {p1}, Lss/ss/gK/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    iput-object p1, p0, Lss/ag$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lss/ag$a;->d:Lss/ai;

    return-object p0
.end method

.method public a(Lss/ai;)Lss/ag$a;
    .registers 3

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lss/ag$a;->a(Ljava/lang/String;Lss/ai;)Lss/ag$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lss/y;)Lss/ag$a;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lss/ag$a;->a:Lss/y;

    return-object p0
.end method

.method public a()Lss/ag;
    .registers 3

    iget-object v0, p0, Lss/ag$a;->a:Lss/y;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lss/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lss/ag;-><init>(Lss/ag$a;Lss/ah;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lss/ag$a;
    .registers 3

    iget-object v0, p0, Lss/ag$a;->c:Lss/w$a;

    invoke-virtual {v0, p1}, Lss/w$a;->b(Ljava/lang/String;)Lss/w$a;

    return-object p0
.end method
