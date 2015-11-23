.class public Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static Mt:I


# instance fields
.field protected Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

.field private Mv:Landroid/view/View$OnClickListener;

.field private Mw:Landroid/app/AlertDialog;

.field private final Mx:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/high16 v0, -0x80000000

    sput v0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mt:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 469
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$2;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mx:Landroid/content/BroadcastReceiver;

    .line 78
    sget v0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mt:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 79
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 81
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mt:I

    .line 83
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 469
    new-instance v0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$2;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)V

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mx:Landroid/content/BroadcastReceiver;

    .line 89
    sget v0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mt:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 90
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 92
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mt:I

    .line 95
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    .line 103
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->a(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->lH()V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mx:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private az(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    .line 251
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/ChinesePinyinConverter$Token;

    .line 255
    iget-object v0, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 258
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 219
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->my()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 220
    if-nez v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->my()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    .line 222
    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    .line 224
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v3

    .line 226
    if-eq v2, v3, :cond_3

    .line 228
    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 230
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {p1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    if-ne v2, v3, :cond_4

    .line 234
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_4
    if-eqz v2, :cond_0

    .line 237
    if-nez v3, :cond_5

    move v0, v1

    .line 238
    goto :goto_0

    .line 241
    :cond_5
    invoke-static {v2, v3}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mw:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private lJ()V
    .locals 5

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    .line 277
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0900de

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0900dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mx:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    new-instance v2, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;)V

    .line 301
    iget-object v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mw:Landroid/app/AlertDialog;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v3, v4, v2, v1, v0}, Lcom/android/settings_ext/bluetooth/Utils;->a(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mw:Landroid/app/AlertDialog;

    .line 303
    return-void
.end method

.method private lK()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09021b

    invoke-static {v0, v1, v2}, Lcom/android/settings_ext/bluetooth/Utils;->d(Landroid/content/Context;Ljava/lang/String;I)V

    .line 321
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 312
    new-instance v1, Lcom/android/settings_ext/search/n;

    invoke-direct {v1, v0}, Lcom/android/settings_ext/search/n;-><init>(Landroid/content/Context;)V

    .line 313
    const-class v2, Lcom/android/settings_ext/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ext/search/n;->className:Ljava/lang/String;

    .line 314
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ext/search/n;->title:Ljava/lang/String;

    .line 315
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090207

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings_ext/search/n;->aiY:Ljava/lang/String;

    .line 316
    const v2, 0x7f020128

    iput v2, v1, Lcom/android/settings_ext/search/n;->iconResId:I

    .line 317
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings_ext/search/n;->enabled:Z

    .line 319
    invoke-static {v0}, Lcom/android/settings_ext/search/e;->bn(Landroid/content/Context;)Lcom/android/settings_ext/search/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/search/e;->c(Landroid/provider/SearchIndexableData;)V

    goto :goto_0
.end method

.method private lL()I
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 324
    iget-object v6, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    .line 330
    invoke-virtual {v6}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mz()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    .line 331
    invoke-virtual {v6, v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->e(Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;)I

    move-result v8

    .line 333
    packed-switch v8, :pswitch_data_0

    :cond_0
    move v0, v1

    move v1, v3

    move v3, v4

    :goto_1
    move v4, v3

    move v3, v1

    move v1, v0

    .line 353
    goto :goto_0

    .line 336
    :pswitch_0
    invoke-static {v8}, Lcom/android/settings_ext/bluetooth/Utils;->bd(I)I

    move-result v2

    .line 374
    :goto_2
    return v2

    :pswitch_1
    move v0, v1

    move v1, v3

    move v3, v5

    .line 340
    goto :goto_1

    .line 343
    :pswitch_2
    invoke-interface {v0}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->lC()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 344
    instance-of v8, v0, Lcom/android/settings_ext/bluetooth/A2dpProfile;

    if-nez v8, :cond_1

    instance-of v8, v0, Lcom/android/settings_ext/bluetooth/A2dpSinkProfile;

    if-eqz v8, :cond_2

    :cond_1
    move v0, v1

    move v3, v4

    move v1, v5

    .line 346
    goto :goto_1

    .line 347
    :cond_2
    instance-of v0, v0, Lcom/android/settings_ext/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_0

    move v0, v5

    move v1, v3

    move v3, v4

    .line 348
    goto :goto_1

    .line 355
    :cond_3
    if-eqz v4, :cond_7

    .line 356
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 357
    const v2, 0x7f0900e9

    goto :goto_2

    .line 358
    :cond_4
    if-eqz v3, :cond_5

    .line 359
    const v2, 0x7f0900e7

    goto :goto_2

    .line 360
    :cond_5
    if-eqz v1, :cond_6

    .line 361
    const v2, 0x7f0900e6

    goto :goto_2

    .line 363
    :cond_6
    const v2, 0x7f0900e5

    goto :goto_2

    .line 367
    :cond_7
    invoke-virtual {v6}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 369
    :pswitch_3
    const v2, 0x7f0900ee

    goto :goto_2

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 367
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mv:Landroid/view/View$OnClickListener;

    .line 114
    return-void
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 1

    .prologue
    .line 204
    instance-of v0, p1, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 206
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 213
    :goto_0
    return v0

    .line 212
    :cond_0
    check-cast p1, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;

    iget-object v0, p1, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    .line 213
    invoke-direct {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->c(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 56
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 190
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;

    iget-object v1, p1, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method lG()Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public lH()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->lL()I

    move-result v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->lM()I

    move-result v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mt()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 151
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method lI()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->lJ()V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->ao(Z)V

    goto :goto_0

    .line 269
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->lK()V

    goto :goto_0
.end method

.method protected lM()I
    .locals 7

    .prologue
    const v2, 0x7f0200d5

    const v1, 0x7f0200d6

    const v0, 0x7f0200cf

    const v3, 0x7f0200d1

    .line 381
    iget-object v4, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->my()Landroid/bluetooth/BluetoothClass;

    move-result-object v4

    .line 382
    if-eqz v4, :cond_2

    .line 383
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 405
    :goto_0
    if-eqz v4, :cond_0

    .line 406
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->mz()Ljava/util/List;

    move-result-object v0

    .line 448
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;

    .line 449
    invoke-interface {v0, v4}, Lcom/android/settings_ext/bluetooth/LocalBluetoothProfile;->a(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 450
    if-eqz v0, :cond_1

    .line 466
    :goto_1
    :sswitch_0
    return v0

    .line 385
    :sswitch_1
    const v0, 0x7f0200d9

    goto :goto_1

    .line 388
    :sswitch_2
    const v0, 0x7f0200d3

    goto :goto_1

    .line 391
    :sswitch_3
    invoke-static {v4}, Lcom/android/settings_ext/bluetooth/HidProfile;->c(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    goto :goto_1

    .line 394
    :sswitch_4
    const v0, 0x7f0200d7

    goto :goto_1

    .line 400
    :cond_2
    const-string v5, "BluetoothDevicePreference"

    const-string v6, "mBtClass is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_5
    move v0, v1

    .line 408
    goto :goto_1

    :sswitch_6
    move v0, v1

    .line 410
    goto :goto_1

    .line 413
    :sswitch_7
    const v0, 0x7f0200d0

    goto :goto_1

    :sswitch_8
    move v0, v2

    .line 416
    goto :goto_1

    .line 428
    :sswitch_9
    const v0, 0x7f0200ce

    goto :goto_1

    :sswitch_a
    move v0, v3

    .line 431
    goto :goto_1

    :sswitch_b
    move v0, v3

    .line 433
    goto :goto_1

    :sswitch_c
    move v0, v3

    .line 435
    goto :goto_1

    :sswitch_d
    move v0, v3

    .line 437
    goto :goto_1

    :sswitch_e
    move v0, v3

    .line 439
    goto :goto_1

    :sswitch_f
    move v0, v3

    .line 441
    goto :goto_1

    :sswitch_10
    move v0, v3

    .line 443
    goto :goto_1

    .line 454
    :cond_3
    if-eqz v4, :cond_5

    .line 455
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 456
    goto :goto_1

    .line 459
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 460
    goto :goto_1

    .line 466
    :cond_5
    const v0, 0x7f0200dd

    goto :goto_1

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
        0x500 -> :sswitch_3
        0x600 -> :sswitch_4
    .end sparse-switch

    .line 406
    :sswitch_data_1
    .sparse-switch
        0x404 -> :sswitch_5
        0x408 -> :sswitch_6
        0x410 -> :sswitch_7
        0x414 -> :sswitch_0
        0x418 -> :sswitch_8
        0x41c -> :sswitch_0
        0x420 -> :sswitch_9
        0x424 -> :sswitch_0
        0x428 -> :sswitch_0
        0x42c -> :sswitch_10
        0x430 -> :sswitch_a
        0x434 -> :sswitch_b
        0x438 -> :sswitch_c
        0x43c -> :sswitch_d
        0x440 -> :sswitch_f
        0x448 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v2, 0xc

    .line 156
    const-string v0, "bt_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "bt_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 163
    sget v0, Lmiui/R$id;->arrow_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 164
    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 168
    sget v1, Lmiui/R$drawable;->btn_inline_detail_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiui/R$dimen;->preference_custom_widget_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 179
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mv:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mv:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 186
    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mu:Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice;->b(Lcom/android/settings_ext/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mw:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mw:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/bluetooth/BluetoothDevicePreference;->Mw:Landroid/app/AlertDialog;

    .line 124
    :cond_0
    return-void
.end method
