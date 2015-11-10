.class public final Lmiui/log/AndroidTag;
.super Ljava/lang/Object;
.source "AndroidTag.java"

# interfaces
.implements Lmiui/log/ILogTag;


# static fields
.field static final BOOTCLASSLOADER:Ljava/lang/ClassLoader;


# instance fields
.field public final className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private clazzLoaded:Z

.field public final defaultOn:Z

.field public final fieldFullPath:Ljava/lang/String;

.field public final fieldName:Ljava/lang/String;

.field private isTagOn:Z

.field private onNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "defaultOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lmiui/log/AndroidTag;->className:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    .line 38
    invoke-static {p2, p3}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/log/AndroidTag;->fieldFullPath:Ljava/lang/String;

    .line 39
    iput-boolean p4, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    .line 40
    iput-boolean p4, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 41
    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    .line 42
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    .line 43
    iput-object p1, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "defaultOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "defaultOn"    # Z

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lmiui/log/AndroidTag;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    return-void
.end method

.method static buildFieldFullPath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/log/AndroidTag;->buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static buildFieldFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadClass()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lmiui/log/AndroidTag;->className:Ljava/lang/String;

    sget-object v1, Lmiui/log/AndroidTag;->BOOTCLASSLOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->clazzLoaded:Z

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public isOn()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    return v0
.end method

.method public declared-synchronized switchOff()V
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/log/AndroidTag;->loadClass()V

    .line 68
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    .line 69
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    if-nez v0, :cond_1

    .line 70
    iget-boolean v0, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 71
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v1, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_1
    :try_start_1
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 76
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v1, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchOn()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 51
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lmiui/log/AndroidTag;->loadClass()V

    .line 52
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    .line 53
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    if-nez v0, :cond_1

    .line 54
    iget-boolean v0, p0, Lmiui/log/AndroidTag;->defaultOn:Z

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 55
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v1, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    :try_start_1
    iget v0, p0, Lmiui/log/AndroidTag;->onNumber:I

    if-ne v0, v1, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    .line 60
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lmiui/log/AndroidTag;->clazz:Ljava/lang/Class;

    iget-object v1, p0, Lmiui/log/AndroidTag;->fieldName:Ljava/lang/String;

    iget-boolean v2, p0, Lmiui/log/AndroidTag;->isTagOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/util/ReflectionUtils;->trySetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
