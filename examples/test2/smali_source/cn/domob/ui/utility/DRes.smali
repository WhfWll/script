.class public Lcn/domob/ui/utility/DRes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static AnimD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ArrayD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ColorD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static DrawableD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static IdD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static LayoutD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static StringD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static StyleD:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final logTag:Ljava/lang/String;

.field private static mGetRes:Lcn/domob/ui/utility/DRes;

.field private static mLogger:Lcn/domob/ui/main/Logger;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcn/domob/ui/main/Logger;

    const-class v1, Lcn/domob/ui/utility/DRes;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/main/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    .line 14
    const-class v0, Lcn/domob/ui/utility/DRes;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    .line 17
    sput-object v2, Lcn/domob/ui/utility/DRes;->IdD:Ljava/lang/Class;

    .line 18
    sput-object v2, Lcn/domob/ui/utility/DRes;->DrawableD:Ljava/lang/Class;

    .line 19
    sput-object v2, Lcn/domob/ui/utility/DRes;->LayoutD:Ljava/lang/Class;

    .line 20
    sput-object v2, Lcn/domob/ui/utility/DRes;->AnimD:Ljava/lang/Class;

    .line 21
    sput-object v2, Lcn/domob/ui/utility/DRes;->StyleD:Ljava/lang/Class;

    .line 22
    sput-object v2, Lcn/domob/ui/utility/DRes;->StringD:Ljava/lang/Class;

    .line 23
    sput-object v2, Lcn/domob/ui/utility/DRes;->ColorD:Ljava/lang/Class;

    .line 24
    sput-object v2, Lcn/domob/ui/utility/DRes;->ArrayD:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/ui/utility/DRes;->mContext:Landroid/content/Context;

    .line 29
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/ui/utility/DRes;->mContext:Landroid/content/Context;

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

    sput-object v0, Lcn/domob/ui/utility/DRes;->DrawableD:Ljava/lang/Class;
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_28} :catch_102

    .line 35
    :goto_28
    :try_start_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/ui/utility/DRes;->mContext:Landroid/content/Context;

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

    sput-object v0, Lcn/domob/ui/utility/DRes;->LayoutD:Ljava/lang/Class;
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_47} :catch_110

    .line 41
    :goto_47
    :try_start_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/ui/utility/DRes;->mContext:Landroid/content/Context;

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

    sput-object v0, Lcn/domob/ui/utility/DRes;->IdD:Ljava/lang/Class;
    :try_end_66
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_66} :catch_11e

    .line 46
    :goto_66
    :try_start_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/ui/utility/DRes;->mContext:Landroid/content/Context;

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

    sput-object v0, Lcn/domob/ui/utility/DRes;->AnimD:Ljava/lang/Class;
    :try_end_85
    .catch Ljava/lang/ClassNotFoundException; {:try_start_66 .. :try_end_85} :catch_12c

    .line 52
    :goto_85
    :try_start_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/ui/utility/DRes;->mContext:Landroid/content/Context;

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

    sput-object v0, Lcn/domob/ui/utility/DRes;->StyleD:Ljava/lang/Class;
    :try_end_a4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_85 .. :try_end_a4} :catch_13a

    .line 58
    :goto_a4
    :try_start_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/ui/utility/DRes;->mContext:Landroid/content/Context;

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

    sput-object v0, Lcn/domob/ui/utility/DRes;->StringD:Ljava/lang/Class;
    :try_end_c3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a4 .. :try_end_c3} :catch_148

    .line 64
    :goto_c3
    :try_start_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/ui/utility/DRes;->mContext:Landroid/content/Context;

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

    sput-object v0, Lcn/domob/ui/utility/DRes;->ColorD:Ljava/lang/Class;
    :try_end_e2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c3 .. :try_end_e2} :catch_156

    .line 70
    :goto_e2
    :try_start_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/domob/ui/utility/DRes;->mContext:Landroid/content/Context;

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

    sput-object v0, Lcn/domob/ui/utility/DRes;->ArrayD:Ljava/lang/Class;
    :try_end_101
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e2 .. :try_end_101} :catch_163

    .line 75
    :goto_101
    return-void

    .line 31
    :catch_102
    move-exception v0

    .line 32
    sget-object v1, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    sget-object v2, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_28

    .line 37
    :catch_110
    move-exception v0

    .line 38
    sget-object v1, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    sget-object v2, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_47

    .line 42
    :catch_11e
    move-exception v0

    .line 43
    sget-object v1, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    sget-object v2, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 48
    :catch_12c
    move-exception v0

    .line 49
    sget-object v1, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    sget-object v2, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_85

    .line 54
    :catch_13a
    move-exception v0

    .line 55
    sget-object v1, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    sget-object v2, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_a4

    .line 60
    :catch_148
    move-exception v0

    .line 61
    sget-object v1, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    sget-object v2, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c3

    .line 66
    :catch_156
    move-exception v0

    .line 67
    sget-object v1, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    sget-object v2, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e2

    .line 72
    :catch_163
    move-exception v0

    .line 73
    sget-object v1, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    sget-object v2, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_101
.end method

.method private getInt(Ljava/lang/Class;Ljava/lang/String;)I
    .registers 7
    .param p2, "paramString"    # Ljava/lang/String;
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
    .line 116
    .local p1, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_4b

    .line 117
    sget-object v0, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    sget-object v1, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

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

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResClass is not initialized. Please make sure you have added neccessary resources. Also make sure you have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/utility/DRes;->mContext:Landroid/content/Context;

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

    .line 125
    :cond_4b
    :try_start_4b
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_52} :catch_54

    move-result v0

    .line 136
    :goto_53
    return v0

    .line 128
    :catch_54
    move-exception v0

    .line 129
    sget-object v1, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

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

    .line 131
    sget-object v1, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    const-string v2, "Error getting resource. Make sure you have copied all resources (res/) from SDK to your project. "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v1, Lcn/domob/ui/utility/DRes;->mLogger:Lcn/domob/ui/main/Logger;

    sget-object v2, Lcn/domob/ui/utility/DRes;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/ui/main/Logger;->errorLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    const/4 v0, -0x1

    goto :goto_53
.end method

.method public static initGetRes(Landroid/content/Context;)Lcn/domob/ui/utility/DRes;
    .registers 2
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v0, Lcn/domob/ui/utility/DRes;->mGetRes:Lcn/domob/ui/utility/DRes;

    if-nez v0, :cond_b

    .line 79
    new-instance v0, Lcn/domob/ui/utility/DRes;

    invoke-direct {v0, p0}, Lcn/domob/ui/utility/DRes;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/domob/ui/utility/DRes;->mGetRes:Lcn/domob/ui/utility/DRes;

    .line 81
    :cond_b
    sget-object v0, Lcn/domob/ui/utility/DRes;->mGetRes:Lcn/domob/ui/utility/DRes;

    return-object v0
.end method


# virtual methods
.method public getAnim(Ljava/lang/String;)I
    .registers 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lcn/domob/ui/utility/DRes;->AnimD:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/ui/utility/DRes;->getInt(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getArray(Ljava/lang/String;)I
    .registers 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lcn/domob/ui/utility/DRes;->ArrayD:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/ui/utility/DRes;->getInt(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColor(Ljava/lang/String;)I
    .registers 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lcn/domob/ui/utility/DRes;->ColorD:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/ui/utility/DRes;->getInt(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDrawable(Ljava/lang/String;)I
    .registers 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-object v0, Lcn/domob/ui/utility/DRes;->DrawableD:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/ui/utility/DRes;->getInt(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcn/domob/ui/utility/DRes;->IdD:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/ui/utility/DRes;->getInt(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayout(Ljava/lang/String;)I
    .registers 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lcn/domob/ui/utility/DRes;->LayoutD:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/ui/utility/DRes;->getInt(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)I
    .registers 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v0, Lcn/domob/ui/utility/DRes;->StringD:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/ui/utility/DRes;->getInt(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStyle(Ljava/lang/String;)I
    .registers 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-object v0, Lcn/domob/ui/utility/DRes;->StyleD:Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcn/domob/ui/utility/DRes;->getInt(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
