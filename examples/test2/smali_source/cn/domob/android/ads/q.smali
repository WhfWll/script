.class public Lcn/domob/android/ads/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/q$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "url"

.field public static final c:Ljava/lang/String; = "auto_run"

.field public static final d:Ljava/lang/String; = "name"

.field public static final e:Ljava/lang/String; = "pkg"

.field public static final f:Ljava/lang/String; = "vc"

.field public static final g:Ljava/lang/String; = "vn"

.field public static final h:I = 0x1

.field public static final i:Ljava/lang/String; = "alreadyDownload:"


# instance fields
.field a:Lcn/domob/android/i/f;

.field private j:Landroid/content/Context;

.field private k:Landroid/net/Uri;

.field private l:Lcn/domob/android/ads/j;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcn/domob/android/ads/q$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/j;Lcn/domob/android/ads/q$a;)V
    .registers 7

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/i/f;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/q;->n:Z

    .line 71
    iput-object p1, p0, Lcn/domob/android/ads/q;->j:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    .line 73
    iput-object p3, p0, Lcn/domob/android/ads/q;->l:Lcn/domob/android/ads/j;

    .line 74
    iput-object p4, p0, Lcn/domob/android/ads/q;->t:Lcn/domob/android/ads/q$a;

    .line 75
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcn/domob/android/ads/C;)V
    .registers 17

    .prologue
    .line 90
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/q;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/C;)V

    .line 92
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/C;)V
    .registers 11

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/i/f;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/q;->n:Z

    .line 96
    iput-object p1, p0, Lcn/domob/android/ads/q;->j:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcn/domob/android/ads/q;->o:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcn/domob/android/ads/q;->p:Ljava/lang/String;

    .line 100
    iput p5, p0, Lcn/domob/android/ads/q;->q:I

    .line 101
    iput-object p6, p0, Lcn/domob/android/ads/q;->r:Ljava/lang/String;

    .line 102
    iput-object p7, p0, Lcn/domob/android/ads/q;->s:Ljava/lang/String;

    .line 103
    iput-object p8, p0, Lcn/domob/android/ads/q;->t:Lcn/domob/android/ads/q$a;

    .line 104
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/q;)Lcn/domob/android/ads/q$a;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/domob/android/ads/q;->t:Lcn/domob/android/ads/q$a;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_7

    .line 209
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 10

    .prologue
    .line 276
    new-instance v3, Lcn/domob/android/ads/q$4;

    invoke-direct {v3}, Lcn/domob/android/ads/q$4;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;I)V

    .line 314
    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/q;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/domob/android/ads/q;->j:Landroid/content/Context;

    return-object v0
.end method

.method private j()V
    .registers 3

    .prologue
    .line 187
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    const-string v1, "url"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/q;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    const-string v1, "auto_run"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/q;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lcn/domob/android/ads/q;->n:Z

    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    const-string v1, "name"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/q;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/q;->o:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    const-string v1, "pkg"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/q;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/q;->p:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    const-string v1, "vc"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/q;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_54

    const/4 v0, 0x1

    :goto_36
    iput v0, p0, Lcn/domob/android/ads/q;->q:I

    .line 194
    iget-object v0, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    const-string v1, "vn"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/q;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/q;->r:Ljava/lang/String;

    .line 198
    :goto_42
    return-void

    .line 188
    :cond_43
    iget-object v0, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    const-string v1, "auto_run"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/q;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_15

    .line 192
    :cond_54
    iget-object v0, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    const-string v1, "vc"

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/q;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_63
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_63} :catch_65

    move-result v0

    goto :goto_36

    .line 195
    :catch_65
    move-exception v0

    .line 196
    iget-object v0, p0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/i/f;

    const-string v1, "Error happened in getting download info"

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->e(Ljava/lang/String;)V

    goto :goto_42
.end method

.method private k()V
    .registers 8

    .prologue
    .line 216
    iget-object v0, p0, Lcn/domob/android/ads/q;->a:Lcn/domob/android/i/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Download url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/i/f;->b(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    iget-object v1, p0, Lcn/domob/android/ads/q;->o:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/q;->p:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/ads/q;->j:Landroid/content/Context;

    new-instance v4, Lcn/domob/android/ads/q$3;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/q$3;-><init>(Lcn/domob/android/ads/q;)V

    iget-object v5, p0, Lcn/domob/android/ads/q;->s:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcn/domob/android/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/c/b;Ljava/lang/String;Z)V

    .line 272
    return-void
.end method


# virtual methods
.method public a()Lcn/domob/android/ads/j;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcn/domob/android/ads/q;->l:Lcn/domob/android/ads/j;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcn/domob/android/ads/q;->o:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/q;->p:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcn/domob/android/ads/q;->q:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcn/domob/android/ads/q;->r:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcn/domob/android/ads/q;->n:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    return-object v0
.end method

.method public i()V
    .registers 5

    .prologue
    .line 139
    iget-object v0, p0, Lcn/domob/android/ads/q;->k:Landroid/net/Uri;

    if-eqz v0, :cond_7

    .line 140
    invoke-direct {p0}, Lcn/domob/android/ads/q;->j()V

    .line 142
    :cond_7
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    const-string v1, "alreadyDownload:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 143
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    const-string v1, "alreadyDownload:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcn/domob/android/c/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_36

    .line 146
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcn/domob/android/ads/q;->t:Lcn/domob/android/ads/q$a;

    if-eqz v1, :cond_31

    .line 148
    iget-object v1, p0, Lcn/domob/android/ads/q;->t:Lcn/domob/android/ads/q$a;

    invoke-interface {v1, p0}, Lcn/domob/android/ads/q$a;->j(Lcn/domob/android/ads/q;)V

    .line 150
    :cond_31
    iget-object v1, p0, Lcn/domob/android/ads/q;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 183
    :cond_36
    :goto_36
    return-void

    .line 155
    :cond_37
    iget-object v0, p0, Lcn/domob/android/ads/q;->o:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 156
    const-string v0, "\u5e94\u7528"

    iput-object v0, p0, Lcn/domob/android/ads/q;->o:Ljava/lang/String;

    .line 159
    :cond_43
    iget-object v0, p0, Lcn/domob/android/ads/q;->j:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/q;->m:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/ads/q;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/domob/android/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_93

    .line 162
    iget-object v1, p0, Lcn/domob/android/ads/q;->j:Landroid/content/Context;

    if-eqz v1, :cond_36

    .line 163
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/domob/android/ads/q;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/q;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5df2\u7ecf\u4e0b\u8f7d\u662f\u5426\u73b0\u5728\u5b89\u88c5?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u5426"

    new-instance v3, Lcn/domob/android/ads/q$2;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/q$2;-><init>(Lcn/domob/android/ads/q;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u662f"

    new-instance v3, Lcn/domob/android/ads/q$1;

    invoke-direct {v3, p0, v0}, Lcn/domob/android/ads/q$1;-><init>(Lcn/domob/android/ads/q;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_36

    .line 181
    :cond_93
    invoke-direct {p0}, Lcn/domob/android/ads/q;->k()V

    goto :goto_36
.end method
