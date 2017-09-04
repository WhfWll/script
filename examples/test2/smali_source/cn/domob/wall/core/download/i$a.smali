.class Lcn/domob/wall/core/download/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/download/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/download/i;


# direct methods
.method private constructor <init>(Lcn/domob/wall/core/download/i;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcn/domob/wall/core/download/i$a;->a:Lcn/domob/wall/core/download/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/domob/wall/core/download/i;Lcn/domob/wall/core/download/i$1;)V
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcn/domob/wall/core/download/i$a;-><init>(Lcn/domob/wall/core/download/i;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 7

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    .line 148
    const/4 v0, 0x1

    .line 152
    :goto_d
    return v0

    .line 149
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 150
    const/4 v0, 0x0

    goto :goto_d

    .line 152
    :cond_1c
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcn/domob/wall/core/download/i$a;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
