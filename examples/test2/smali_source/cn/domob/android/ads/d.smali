.class public Lcn/domob/android/ads/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/i/f;

.field private static final b:Ljava/lang/String;

.field private static c:Lcn/domob/android/ads/d;

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcn/domob/android/i/f;

    const-class v1, Lcn/domob/android/ads/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/i/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    .line 13
    const-class v0, Lcn/domob/android/ads/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    .line 16
    sput-object v2, Lcn/domob/android/ads/d;->e:Ljava/lang/Class;

    .line 17
    sput-object v2, Lcn/domob/android/ads/d;->f:Ljava/lang/Class;

    .line 18
    sput-object v2, Lcn/domob/android/ads/d;->g:Ljava/lang/Class;

    .line 19
    sput-object v2, Lcn/domob/android/ads/d;->h:Ljava/lang/Class;

    .line 20
    sput-object v2, Lcn/domob/android/ads/d;->i:Ljava/lang/Class;

    .line 21
    sput-object v2, Lcn/domob/android/ads/d;->j:Ljava/lang/Class;

    .line 22
    sput-object v2, Lcn/domob/android/ads/d;->k:Ljava/lang/Class;

    .line 23
    sput-object v2, Lcn/domob/android/ads/d;->l:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/d;->d:Landroid/content/Context;

    .line 28
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/d;->f:Ljava/lang/Class;
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_28} :catch_102

    .line 34
    :goto_28
    :try_start_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/d;->g:Ljava/lang/Class;
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_47} :catch_110

    .line 40
    :goto_47
    :try_start_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/d;->e:Ljava/lang/Class;
    :try_end_66
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_66} :catch_11e

    .line 45
    :goto_66
    :try_start_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$anim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/d;->h:Ljava/lang/Class;
    :try_end_85
    .catch Ljava/lang/ClassNotFoundException; {:try_start_66 .. :try_end_85} :catch_12c

    .line 51
    :goto_85
    :try_start_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/d;->i:Ljava/lang/Class;
    :try_end_a4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_85 .. :try_end_a4} :catch_13a

    .line 57
    :goto_a4
    :try_start_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/d;->j:Ljava/lang/Class;
    :try_end_c3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a4 .. :try_end_c3} :catch_148

    .line 63
    :goto_c3
    :try_start_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$color"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/d;->k:Ljava/lang/Class;
    :try_end_e2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c3 .. :try_end_e2} :catch_156

    .line 69
    :goto_e2
    :try_start_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R$array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/d;->l:Ljava/lang/Class;
    :try_end_101
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e2 .. :try_end_101} :catch_163

    .line 74
    :goto_101
    return-void

    .line 30
    :catch_102
    move-exception v0

    .line 31
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    sget-object v2, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 36
    :catch_110
    move-exception v0

    .line 37
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    sget-object v2, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_47

    .line 41
    :catch_11e
    move-exception v0

    .line 42
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    sget-object v2, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 47
    :catch_12c
    move-exception v0

    .line 48
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    sget-object v2, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 53
    :catch_13a
    move-exception v0

    .line 54
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    sget-object v2, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_a4

    .line 59
    :catch_148
    move-exception v0

    .line 60
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    sget-object v2, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c3

    .line 65
    :catch_156
    move-exception v0

    .line 66
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    sget-object v2, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e2

    .line 71
    :catch_163
    move-exception v0

    .line 72
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    sget-object v2, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_101
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 115
    if-nez p1, :cond_4b

    .line 116
    sget-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    sget-object v1, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRes(null,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResClass is not initialized. Please make sure you have added neccessary resources. Also make sure you have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/d;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R$* configured in obfuscation. field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_4b
    :try_start_4b
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_52} :catch_54

    move-result v0

    .line 135
    :goto_53
    return v0

    .line 127
    :catch_54
    move-exception v0

    .line 128
    sget-object v1, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRes("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v1, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    const-string v2, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/i/f;

    sget-object v2, Lcn/domob/android/ads/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/i/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    const/4 v0, -0x1

    goto :goto_53
.end method

.method public static a(Landroid/content/Context;)Lcn/domob/android/ads/d;
    .registers 2

    .prologue
    .line 77
    sget-object v0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/d;

    if-nez v0, :cond_b

    .line 78
    new-instance v0, Lcn/domob/android/ads/d;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/d;

    .line 80
    :cond_b
    sget-object v0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 84
    sget-object v0, Lcn/domob/android/ads/d;->h:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/d;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 88
    sget-object v0, Lcn/domob/android/ads/d;->e:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/d;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 92
    sget-object v0, Lcn/domob/android/ads/d;->f:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/d;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 96
    sget-object v0, Lcn/domob/android/ads/d;->g:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/d;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 100
    sget-object v0, Lcn/domob/android/ads/d;->i:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/d;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 104
    sget-object v0, Lcn/domob/android/ads/d;->j:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/d;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 108
    sget-object v0, Lcn/domob/android/ads/d;->k:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/d;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 111
    sget-object v0, Lcn/domob/android/ads/d;->l:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/d;->a(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
