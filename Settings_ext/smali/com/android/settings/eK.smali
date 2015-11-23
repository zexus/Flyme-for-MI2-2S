.class public Lcom/android/settings_ext/eK;
.super Ljava/lang/Object;
.source "MiuiUtils.java"


# static fields
.field private static sB:Lcom/android/settings_ext/eK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static D(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/4 v2, 0x0

    .line 218
    .line 219
    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v5, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v2

    .line 222
    :goto_0
    if-ge v1, v3, :cond_0

    .line 223
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, v5, :cond_1

    .line 224
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    return-object v0

    .line 222
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static F(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 278
    if-eqz p0, :cond_1

    const-string v0, "1"

    .line 281
    :goto_0
    const-string v1, "leadcore"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/devices/platform/comip-gpio-keys/keys_wakeup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/miui/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 283
    const-string v1, "/sys/devices/platform/comip-gpio-keys/keys_wakeup"

    invoke-static {v1, v0}, Lcom/android/settings_ext/eK;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_1
    return-void

    .line 278
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 284
    :cond_2
    const-string v1, "mediatek"

    const-string v2, "vendor"

    invoke-static {v2}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/bus/platform/drivers/mtk-kpd/kpd_as_wake"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/miui/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > /sys/devices/platform/mtk-kpd/driver/kpd_as_wake"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/miui/Shell;->runShell(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 287
    const-string v1, "/sys/bus/platform/drivers/mtk-kpd/kpd_as_wake"

    invoke-static {v1, v0}, Lcom/android/settings_ext/eK;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "/sys/devices/platform/mtk-kpd/driver/kpd_as_wake"

    invoke-static {v1, v0}, Lcom/android/settings_ext/eK;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 268
    instance-of v0, p0, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v0, :cond_0

    .line 269
    check-cast p0, Lcom/android/settings_ext/MiuiSettings;

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/settings_ext/MiuiSettings;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    check-cast p0, Lcom/android/settings_ext/gh;

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/settings_ext/gh;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)V
    .locals 7

    .prologue
    .line 258
    instance-of v0, p0, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 259
    check-cast v0, Lcom/android/settings_ext/MiuiSettings;

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ext/MiuiSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    check-cast p0, Lcom/android/settings_ext/gh;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/gh;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 201
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 202
    instance-of v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 203
    check-cast v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 208
    :cond_0
    invoke-static {p1}, Lmiui/util/ActionBarUtils;->getActionBarOverlayLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 209
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v1, :cond_2

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    if-eqz v0, :cond_1

    .line 213
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 7

    .prologue
    .line 243
    instance-of v0, p0, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 244
    check-cast v0, Lcom/android/settings_ext/MiuiSettings;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ext/MiuiSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 255
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 250
    check-cast v0, Lcom/android/settings_ext/gh;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ext/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Fragment;)V
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 315
    instance-of v1, v0, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v1, :cond_0

    .line 316
    check-cast v0, Lcom/android/settings_ext/MiuiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiSettings;->fv()V

    .line 318
    :cond_0
    return-void
.end method

.method public static b(Landroid/app/Fragment;)V
    .locals 4

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_0

    .line 323
    const-string v0, "input_method"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 324
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 325
    instance-of v0, v1, Lcom/android/settings_ext/MiuiSettings;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 326
    check-cast v0, Lcom/android/settings_ext/MiuiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/MiuiSettings;->fw()V

    .line 329
    :cond_0
    return-void
.end method

.method public static fB()Lcom/android/settings_ext/eK;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/settings_ext/eK;->sB:Lcom/android/settings_ext/eK;

    if-nez v0, :cond_0

    .line 63
    :try_start_0
    const-string v0, "com.android.settings.bO"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/eK;

    sput-object v0, Lcom/android/settings_ext/eK;->sB:Lcom/android/settings_ext/eK;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings_ext/eK;->sB:Lcom/android/settings_ext/eK;

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v0, Lcom/android/settings_ext/eK;

    invoke-direct {v0}, Lcom/android/settings_ext/eK;-><init>()V

    sput-object v0, Lcom/android/settings_ext/eK;->sB:Lcom/android/settings_ext/eK;

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 295
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    if-eqz v1, :cond_0

    .line 305
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 298
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 299
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 303
    if-eqz v1, :cond_0

    .line 305
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 306
    :catch_2
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 300
    :catch_3
    move-exception v0

    .line 301
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 303
    if-eqz v2, :cond_0

    .line 305
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 306
    :catch_4
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    .line 305
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 308
    :cond_1
    :goto_4
    throw v0

    .line 306
    :catch_5
    move-exception v1

    .line 307
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 303
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 300
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 298
    :catch_7
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public A(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public B(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public C(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 174
    const/4 v1, 0x0

    .line 176
    invoke-static {p1}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->get(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->getActivateInfo(I)Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;

    move-result-object v2

    .line 179
    const-wide/16 v4, 0xbb8

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 180
    const-string v3, "activate_phone"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/accountsdk/activate/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 188
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    .line 191
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 189
    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    :try_start_2
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/OperationCancelledException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 189
    goto :goto_0

    .line 185
    :catch_2
    move-exception v0

    .line 186
    :try_start_3
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/activate/CloudServiceFailureException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    move-object v0, v1

    .line 189
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    invoke-interface {v2, v6}, Lcom/xiaomi/accountsdk/activate/ActivateManager$ActivateManagerFuture;->cancel(Z)Z

    throw v0
.end method

.method public a(Landroid/location/LocationManager;)I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/location/LocationManager;I)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public a(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ext/wifi/d;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settings_ext/wifi/AccessPoint;->a(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    invoke-static {p2}, Lcom/android/settings_ext/wifi/AccessPoint;->a(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/content/Context;I)V
    .locals 9

    .prologue
    const/4 v1, -0x1

    .line 95
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 96
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 98
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 99
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .line 100
    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v6

    .line 104
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    .line 105
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    move v3, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 106
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v3

    move v3, v2

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 107
    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/eK;->a(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v2, v4, :cond_0

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, p2, :cond_0

    .line 110
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 111
    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    :cond_1
    move v2, v3

    move v3, v4

    .line 115
    goto :goto_0

    :cond_2
    move v1, v2

    .line 117
    :cond_3
    if-ltz v1, :cond_4

    .line 118
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 120
    :cond_4
    return-void
.end method

.method public d(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public isMultiSimSupported()Z
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public y(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public z(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ext/eK;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method
