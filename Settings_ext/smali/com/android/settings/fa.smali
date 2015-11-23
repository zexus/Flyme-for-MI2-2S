.class Lcom/android/settings/fa;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mType:I

.field final synthetic th:Lcom/android/settings/NotificationAppListSettings;

.field private tl:Landroid/content/pm/ApplicationInfo;

.field private tm:Z

.field private tn:Ljava/lang/String;

.field private tp:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/NotificationAppListSettings;Landroid/content/pm/ApplicationInfo;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    iput-object p1, p0, Lcom/android/settings/fa;->th:Lcom/android/settings/NotificationAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fa;->tm:Z

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fa;->mType:I

    .line 255
    iput-boolean v3, p0, Lcom/android/settings/fa;->tp:Z

    .line 258
    iput-object p2, p0, Lcom/android/settings/fa;->tl:Landroid/content/pm/ApplicationInfo;

    .line 259
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->f(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u00A0"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fa;->mLabel:Ljava/lang/String;

    .line 260
    invoke-static {p1}, Lcom/android/settings/NotificationAppListSettings;->d(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fa;->fK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/android/settings/NotificationAppListSettings;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fa;->tn:Ljava/lang/String;

    .line 261
    iput v3, p0, Lcom/android/settings/fa;->mType:I

    .line 262
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/NotificationAppListSettings;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 264
    iput-object p1, p0, Lcom/android/settings/fa;->th:Lcom/android/settings/NotificationAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-boolean v1, p0, Lcom/android/settings/fa;->tm:Z

    .line 253
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fa;->mType:I

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fa;->tp:Z

    .line 265
    iput-object p2, p0, Lcom/android/settings/fa;->mLabel:Ljava/lang/String;

    .line 266
    iput v1, p0, Lcom/android/settings/fa;->mType:I

    .line 267
    return-void
.end method

.method static synthetic a(Lcom/android/settings/fa;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings/fa;->tn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/fa;)Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/settings/fa;->tp:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings/fa;Z)Z
    .locals 0

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/android/settings/fa;->tp:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/fa;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/fa;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/fa;Z)Z
    .locals 0

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/android/settings/fa;->tm:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/fa;)I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/android/settings/fa;->mType:I

    return v0
.end method

.method static synthetic d(Lcom/android/settings/fa;)Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/settings/fa;->tm:Z

    return v0
.end method

.method static synthetic e(Lcom/android/settings/fa;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/fa;->tn:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public fK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/fa;->tl:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fa;->tl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method
