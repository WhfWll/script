.class public final Lss/ss/gK/g;
.super Ljava/lang/Object;

# interfaces
.implements Lss/ss/gK/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lss/ss/gK/g$a;
    }
.end annotation


# static fields
.field private static final a:LgK/h;

.field private static final b:LgK/h;

.field private static final c:LgK/h;

.field private static final d:LgK/h;

.field private static final e:LgK/h;

.field private static final f:LgK/h;

.field private static final g:LgK/h;

.field private static final h:LgK/h;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LgK/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LgK/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LgK/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LgK/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m:Lss/ss/gK/w;

.field private final n:Lss/ss/ss/d;

.field private o:Lss/ss/gK/j;

.field private p:Lss/ss/ss/p;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "connection"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->a:LgK/h;

    const-string v0, "host"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->b:LgK/h;

    const-string v0, "keep-alive"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->c:LgK/h;

    const-string v0, "proxy-connection"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->d:LgK/h;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->e:LgK/h;

    const-string v0, "te"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->f:LgK/h;

    const-string v0, "encoding"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->g:LgK/h;

    const-string v0, "upgrade"

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->h:LgK/h;

    const/16 v0, 0xb

    new-array v0, v0, [LgK/h;

    sget-object v1, Lss/ss/gK/g;->a:LgK/h;

    aput-object v1, v0, v3

    sget-object v1, Lss/ss/gK/g;->b:LgK/h;

    aput-object v1, v0, v4

    sget-object v1, Lss/ss/gK/g;->c:LgK/h;

    aput-object v1, v0, v5

    sget-object v1, Lss/ss/gK/g;->d:LgK/h;

    aput-object v1, v0, v6

    sget-object v1, Lss/ss/gK/g;->e:LgK/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lss/ss/ss/r;->b:LgK/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lss/ss/ss/r;->c:LgK/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lss/ss/ss/r;->d:LgK/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lss/ss/ss/r;->e:LgK/h;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lss/ss/ss/r;->f:LgK/h;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lss/ss/ss/r;->g:LgK/h;

    aput-object v2, v0, v1

    invoke-static {v0}, Lss/ss/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->i:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [LgK/h;

    sget-object v1, Lss/ss/gK/g;->a:LgK/h;

    aput-object v1, v0, v3

    sget-object v1, Lss/ss/gK/g;->b:LgK/h;

    aput-object v1, v0, v4

    sget-object v1, Lss/ss/gK/g;->c:LgK/h;

    aput-object v1, v0, v5

    sget-object v1, Lss/ss/gK/g;->d:LgK/h;

    aput-object v1, v0, v6

    sget-object v1, Lss/ss/gK/g;->e:LgK/h;

    aput-object v1, v0, v7

    invoke-static {v0}, Lss/ss/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->j:Ljava/util/List;

    const/16 v0, 0xe

    new-array v0, v0, [LgK/h;

    sget-object v1, Lss/ss/gK/g;->a:LgK/h;

    aput-object v1, v0, v3

    sget-object v1, Lss/ss/gK/g;->b:LgK/h;

    aput-object v1, v0, v4

    sget-object v1, Lss/ss/gK/g;->c:LgK/h;

    aput-object v1, v0, v5

    sget-object v1, Lss/ss/gK/g;->d:LgK/h;

    aput-object v1, v0, v6

    sget-object v1, Lss/ss/gK/g;->f:LgK/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lss/ss/gK/g;->e:LgK/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lss/ss/gK/g;->g:LgK/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lss/ss/gK/g;->h:LgK/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lss/ss/ss/r;->b:LgK/h;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lss/ss/ss/r;->c:LgK/h;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lss/ss/ss/r;->d:LgK/h;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lss/ss/ss/r;->e:LgK/h;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lss/ss/ss/r;->f:LgK/h;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lss/ss/ss/r;->g:LgK/h;

    aput-object v2, v0, v1

    invoke-static {v0}, Lss/ss/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->k:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [LgK/h;

    sget-object v1, Lss/ss/gK/g;->a:LgK/h;

    aput-object v1, v0, v3

    sget-object v1, Lss/ss/gK/g;->b:LgK/h;

    aput-object v1, v0, v4

    sget-object v1, Lss/ss/gK/g;->c:LgK/h;

    aput-object v1, v0, v5

    sget-object v1, Lss/ss/gK/g;->d:LgK/h;

    aput-object v1, v0, v6

    sget-object v1, Lss/ss/gK/g;->f:LgK/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lss/ss/gK/g;->e:LgK/h;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lss/ss/gK/g;->g:LgK/h;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lss/ss/gK/g;->h:LgK/h;

    aput-object v2, v0, v1

    invoke-static {v0}, Lss/ss/j;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lss/ss/gK/g;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lss/ss/gK/w;Lss/ss/ss/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss/ss/gK/g;->m:Lss/ss/gK/w;

    iput-object p2, p0, Lss/ss/gK/g;->n:Lss/ss/ss/d;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lss/ak$a;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;)",
            "Lss/ak$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, "HTTP/1.1"

    new-instance v6, Lss/w$a;

    invoke-direct {v6}, Lss/w$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    :goto_e
    if-ge v5, v7, :cond_6a

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v8, v0, Lss/ss/ss/r;->h:LgK/h;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v0, v0, Lss/ss/ss/r;->i:LgK/h;

    invoke-virtual {v0}, LgK/h;->a()Ljava/lang/String;

    move-result-object v9

    move-object v0, v1

    move v1, v3

    :goto_26
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_65

    invoke-virtual {v9, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_37

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    :cond_37
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v10, Lss/ss/ss/r;->a:LgK/h;

    invoke-virtual {v8, v10}, LgK/h;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    :goto_43
    add-int/lit8 v2, v4, 0x1

    move v11, v2

    move-object v2, v1

    move v1, v11

    goto :goto_26

    :cond_49
    sget-object v10, Lss/ss/ss/r;->g:LgK/h;

    invoke-virtual {v8, v10}, LgK/h;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_54

    move-object v0, v1

    move-object v1, v2

    goto :goto_43

    :cond_54
    sget-object v10, Lss/ss/gK/g;->j:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_63

    invoke-virtual {v8}, LgK/h;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v1}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    :cond_63
    move-object v1, v2

    goto :goto_43

    :cond_65
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_e

    :cond_6a
    if-nez v2, :cond_74

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/v;->a(Ljava/lang/String;)Lss/ss/gK/v;

    move-result-object v0

    new-instance v1, Lss/ak$a;

    invoke-direct {v1}, Lss/ak$a;-><init>()V

    sget-object v2, Lss/ae;->c:Lss/ae;

    invoke-virtual {v1, v2}, Lss/ak$a;->a(Lss/ae;)Lss/ak$a;

    move-result-object v1

    iget v2, v0, Lss/ss/gK/v;->b:I

    invoke-virtual {v1, v2}, Lss/ak$a;->a(I)Lss/ak$a;

    move-result-object v1

    iget-object v0, v0, Lss/ss/gK/v;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lss/ak$a;->a(Ljava/lang/String;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v6}, Lss/w$a;->a()Lss/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Lss/w;)Lss/ak$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lss/ss/gK/g;)Lss/ss/gK/w;
    .registers 2

    iget-object v0, p0, Lss/ss/gK/g;->m:Lss/ss/gK/w;

    return-object v0
.end method

.method public static b(Lss/ag;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/ag;",
            ")",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lss/ag;->c()Lss/w;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lss/w;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lss/ss/ss/r;

    sget-object v1, Lss/ss/ss/r;->b:LgK/h;

    invoke-virtual {p0}, Lss/ag;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lss/ss/ss/r;

    sget-object v1, Lss/ss/ss/r;->c:LgK/h;

    invoke-virtual {p0}, Lss/ag;->a()Lss/y;

    move-result-object v3

    invoke-static {v3}, Lss/ss/gK/r;->a(Lss/y;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lss/ss/ss/r;

    sget-object v1, Lss/ss/ss/r;->g:LgK/h;

    const-string v3, "HTTP/1.1"

    invoke-direct {v0, v1, v3}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lss/ss/ss/r;

    sget-object v1, Lss/ss/ss/r;->f:LgK/h;

    invoke-virtual {p0}, Lss/ag;->a()Lss/y;

    move-result-object v3

    invoke-static {v3, v2}, Lss/ss/j;->a(Lss/y;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lss/ss/ss/r;

    sget-object v1, Lss/ss/ss/r;->d:LgK/h;

    invoke-virtual {p0}, Lss/ag;->a()Lss/y;

    move-result-object v3

    invoke-virtual {v3}, Lss/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v4}, Lss/w;->a()I

    move-result v7

    move v3, v2

    :goto_6a
    if-ge v3, v7, :cond_cb

    invoke-virtual {v4, v3}, Lss/w;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v8

    sget-object v0, Lss/ss/gK/g;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_82
    :goto_82
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6a

    :cond_86
    invoke-virtual {v4, v3}, Lss/w;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    new-instance v0, Lss/ss/ss/r;

    invoke-direct {v0, v8, v9}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_99
    move v1, v2

    :goto_9a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_82

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v0, v0, Lss/ss/ss/r;->h:LgK/h;

    invoke-virtual {v0, v8}, LgK/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v0, v0, Lss/ss/ss/r;->i:LgK/h;

    invoke-virtual {v0}, LgK/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lss/ss/gK/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lss/ss/ss/r;

    invoke-direct {v9, v8, v0}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v5, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    :cond_c7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9a

    :cond_cb
    return-object v5
.end method

.method public static b(Ljava/util/List;)Lss/ak$a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;)",
            "Lss/ak$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Lss/w$a;

    invoke-direct {v3}, Lss/w$a;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_c
    if-ge v2, v4, :cond_40

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v5, v0, Lss/ss/ss/r;->h:LgK/h;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss/ss/ss/r;

    iget-object v0, v0, Lss/ss/ss/r;->i:LgK/h;

    invoke-virtual {v0}, LgK/h;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lss/ss/ss/r;->a:LgK/h;

    invoke-virtual {v5, v6}, LgK/h;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    :goto_2a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_c

    :cond_2f
    sget-object v6, Lss/ss/gK/g;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    invoke-virtual {v5}, LgK/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lss/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Lss/w$a;

    :cond_3e
    move-object v0, v1

    goto :goto_2a

    :cond_40
    if-nez v1, :cond_4a

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/v;->a(Ljava/lang/String;)Lss/ss/gK/v;

    move-result-object v0

    new-instance v1, Lss/ak$a;

    invoke-direct {v1}, Lss/ak$a;-><init>()V

    sget-object v2, Lss/ae;->d:Lss/ae;

    invoke-virtual {v1, v2}, Lss/ak$a;->a(Lss/ae;)Lss/ak$a;

    move-result-object v1

    iget v2, v0, Lss/ss/gK/v;->b:I

    invoke-virtual {v1, v2}, Lss/ak$a;->a(I)Lss/ak$a;

    move-result-object v1

    iget-object v0, v0, Lss/ss/gK/v;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lss/ak$a;->a(Ljava/lang/String;)Lss/ak$a;

    move-result-object v0

    invoke-virtual {v3}, Lss/w$a;->a()Lss/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lss/ak$a;->a(Lss/w;)Lss/ak$a;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lss/ag;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lss/ag;",
            ")",
            "Ljava/util/List",
            "<",
            "Lss/ss/ss/r;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lss/ag;->c()Lss/w;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lss/w;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Lss/ss/ss/r;

    sget-object v4, Lss/ss/ss/r;->b:LgK/h;

    invoke-virtual {p0}, Lss/ag;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lss/ss/ss/r;

    sget-object v4, Lss/ss/ss/r;->c:LgK/h;

    invoke-virtual {p0}, Lss/ag;->a()Lss/y;

    move-result-object v5

    invoke-static {v5}, Lss/ss/gK/r;->a(Lss/y;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lss/ss/ss/r;

    sget-object v4, Lss/ss/ss/r;->e:LgK/h;

    invoke-virtual {p0}, Lss/ag;->a()Lss/y;

    move-result-object v5

    invoke-static {v5, v0}, Lss/ss/j;->a(Lss/y;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lss/ss/ss/r;

    sget-object v4, Lss/ss/ss/r;->d:LgK/h;

    invoke-virtual {p0}, Lss/ag;->a()Lss/y;

    move-result-object v5

    invoke-virtual {v5}, Lss/y;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lss/w;->a()I

    move-result v3

    :goto_58
    if-ge v0, v3, :cond_7f

    invoke-virtual {v1, v0}, Lss/w;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LgK/h;->a(Ljava/lang/String;)LgK/h;

    move-result-object v4

    sget-object v5, Lss/ss/gK/g;->k:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    new-instance v5, Lss/ss/ss/r;

    invoke-virtual {v1, v0}, Lss/w;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lss/ss/ss/r;-><init>(LgK/h;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_7f
    return-object v2
.end method


# virtual methods
.method public a(Lss/ag;J)LgK/v;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g;->p:Lss/ss/ss/p;

    invoke-virtual {v0}, Lss/ss/ss/p;->h()LgK/v;

    move-result-object v0

    return-object v0
.end method

.method public a()Lss/ak$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g;->n:Lss/ss/ss/d;

    invoke-virtual {v0}, Lss/ss/ss/d;->a()Lss/ae;

    move-result-object v0

    sget-object v1, Lss/ae;->d:Lss/ae;

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lss/ss/gK/g;->p:Lss/ss/ss/p;

    invoke-virtual {v0}, Lss/ss/ss/p;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/g;->b(Ljava/util/List;)Lss/ak$a;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lss/ss/gK/g;->p:Lss/ss/ss/p;

    invoke-virtual {v0}, Lss/ss/ss/p;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lss/ss/gK/g;->a(Ljava/util/List;)Lss/ak$a;

    move-result-object v0

    goto :goto_14
.end method

.method public a(Lss/ak;)Lss/am;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lss/ss/gK/g$a;

    iget-object v1, p0, Lss/ss/gK/g;->p:Lss/ss/ss/p;

    invoke-virtual {v1}, Lss/ss/ss/p;->g()LgK/w;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lss/ss/gK/g$a;-><init>(Lss/ss/gK/g;LgK/w;)V

    new-instance v1, Lss/ss/gK/p;

    invoke-virtual {p1}, Lss/ak;->e()Lss/w;

    move-result-object v2

    invoke-static {v0}, LgK/n;->a(LgK/w;)LgK/g;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lss/ss/gK/p;-><init>(Lss/w;LgK/g;)V

    return-object v1
.end method

.method public a(Lss/ag;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g;->p:Lss/ss/ss/p;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lss/ss/gK/g;->o:Lss/ss/gK/j;

    invoke-virtual {v0}, Lss/ss/gK/j;->b()V

    iget-object v0, p0, Lss/ss/gK/g;->o:Lss/ss/gK/j;

    invoke-virtual {v0, p1}, Lss/ss/gK/j;->a(Lss/ag;)Z

    move-result v1

    iget-object v0, p0, Lss/ss/gK/g;->n:Lss/ss/ss/d;

    invoke-virtual {v0}, Lss/ss/ss/d;->a()Lss/ae;

    move-result-object v0

    sget-object v2, Lss/ae;->d:Lss/ae;

    if-ne v0, v2, :cond_50

    invoke-static {p1}, Lss/ss/gK/g;->c(Lss/ag;)Ljava/util/List;

    move-result-object v0

    :goto_1e
    const/4 v2, 0x1

    iget-object v3, p0, Lss/ss/gK/g;->n:Lss/ss/ss/d;

    invoke-virtual {v3, v0, v1, v2}, Lss/ss/ss/d;->a(Ljava/util/List;ZZ)Lss/ss/ss/p;

    move-result-object v0

    iput-object v0, p0, Lss/ss/gK/g;->p:Lss/ss/ss/p;

    iget-object v0, p0, Lss/ss/gK/g;->p:Lss/ss/ss/p;

    invoke-virtual {v0}, Lss/ss/ss/p;->e()LgK/x;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/g;->o:Lss/ss/gK/j;

    iget-object v1, v1, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, LgK/x;->a(JLjava/util/concurrent/TimeUnit;)LgK/x;

    iget-object v0, p0, Lss/ss/gK/g;->p:Lss/ss/ss/p;

    invoke-virtual {v0}, Lss/ss/ss/p;->f()LgK/x;

    move-result-object v0

    iget-object v1, p0, Lss/ss/gK/g;->o:Lss/ss/gK/j;

    iget-object v1, v1, Lss/ss/gK/j;->a:Lss/ac;

    invoke-virtual {v1}, Lss/ac;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, LgK/x;->a(JLjava/util/concurrent/TimeUnit;)LgK/x;

    goto :goto_4

    :cond_50
    invoke-static {p1}, Lss/ss/gK/g;->b(Lss/ag;)Ljava/util/List;

    move-result-object v0

    goto :goto_1e
.end method

.method public a(Lss/ss/gK/j;)V
    .registers 2

    iput-object p1, p0, Lss/ss/gK/g;->o:Lss/ss/gK/j;

    return-void
.end method

.method public a(Lss/ss/gK/s;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g;->p:Lss/ss/ss/p;

    invoke-virtual {v0}, Lss/ss/ss/p;->h()LgK/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lss/ss/gK/s;->a(LgK/v;)V

    return-void
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lss/ss/gK/g;->p:Lss/ss/ss/p;

    invoke-virtual {v0}, Lss/ss/ss/p;->h()LgK/v;

    move-result-object v0

    invoke-interface {v0}, LgK/v;->close()V

    return-void
.end method
