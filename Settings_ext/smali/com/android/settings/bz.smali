.class Lcom/android/settings/bz;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic iV:Lcom/android/settings/DevelopmentSettings;

.field final synthetic iW:Ljava/lang/Class;

.field final synthetic iX:I

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    .locals 0

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/android/settings/bz;->iV:Lcom/android/settings/DevelopmentSettings;

    iput-object p2, p0, Lcom/android/settings/bz;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/android/settings/bz;->iW:Ljava/lang/Class;

    iput p4, p0, Lcom/android/settings/bz;->iX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 1507
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bz;->val$method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/settings/bz;->iW:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/bz;->iX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1509
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1510
    iget-object v1, p0, Lcom/android/settings/bz;->iV:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Lcom/android/settings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    :goto_0
    return-void

    .line 1511
    :catch_0
    move-exception v0

    .line 1513
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
