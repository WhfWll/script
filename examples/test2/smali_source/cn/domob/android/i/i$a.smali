.class public Lcn/domob/android/i/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/i/i$a;->a:Ljava/lang/String;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/i/i$a;->b:Ljava/lang/String;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/i/i$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcn/domob/android/i/i$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcn/domob/android/i/i$a;->a:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcn/domob/android/i/i$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcn/domob/android/i/i$a;->b:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcn/domob/android/i/i$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 198
    iput-object p1, p0, Lcn/domob/android/i/i$a;->c:Ljava/lang/String;

    .line 199
    return-void
.end method
