.class Lcom/android/settings_ext/eY;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tj:Lcom/android/settings_ext/eX;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/eX;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/settings_ext/eY;->tj:Lcom/android/settings_ext/eX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 366
    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/fa;

    .line 367
    iget-object v1, p0, Lcom/android/settings_ext/eY;->tj:Lcom/android/settings_ext/eX;

    iget-object v1, v1, Lcom/android/settings_ext/eX;->th:Lcom/android/settings_ext/NotificationAppListSettings;

    invoke-static {v1, v0}, Lcom/android/settings_ext/NotificationAppListSettings;->a(Lcom/android/settings_ext/NotificationAppListSettings;Lcom/android/settings_ext/fa;)Lcom/android/settings_ext/fa;

    .line 368
    iget-object v1, p0, Lcom/android/settings_ext/eY;->tj:Lcom/android/settings_ext/eX;

    iget-object v1, v1, Lcom/android/settings_ext/eX;->th:Lcom/android/settings_ext/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings_ext/NotificationAppListSettings;->i(Lcom/android/settings_ext/NotificationAppListSettings;)Lcom/android/settings_ext/fa;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings_ext/fa;->a(Lcom/android/settings_ext/fa;Z)Z

    .line 369
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 370
    const-string v2, "appName"

    invoke-static {v0}, Lcom/android/settings_ext/fa;->b(Lcom/android/settings_ext/fa;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v2, "packageName"

    invoke-virtual {v0}, Lcom/android/settings_ext/fa;->fK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/android/settings_ext/eY;->tj:Lcom/android/settings_ext/eX;

    iget-object v2, v2, Lcom/android/settings_ext/eX;->th:Lcom/android/settings_ext/NotificationAppListSettings;

    invoke-virtual {v2}, Lcom/android/settings_ext/NotificationAppListSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 374
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "startPreferencePanel"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/Fragment;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 377
    if-eqz v3, :cond_0

    .line 378
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.settings.NotificationFilterSettings"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-static {v0}, Lcom/android/settings_ext/fa;->b(Lcom/android/settings_ext/fa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/settings_ext/eY;->tj:Lcom/android/settings_ext/eX;

    iget-object v1, v1, Lcom/android/settings_ext/eX;->th:Lcom/android/settings_ext/NotificationAppListSettings;

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
