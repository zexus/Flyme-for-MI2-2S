.class Lcom/android/settings_ext/wifi/bh;
.super Landroid/app/AlertDialog;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final axU:[C


# instance fields
.field private asR:Lcom/android/settings_ext/wifi/AccessPoint;

.field private aur:Landroid/widget/TextView;

.field private axV:Landroid/widget/Button;

.field private axW:Landroid/os/Handler;

.field private axX:Landroid/widget/TextView;

.field private axY:Landroid/widget/CheckBox;

.field private axZ:Ljava/lang/String;

.field private df:Landroid/widget/Button;

.field private hD:Landroid/net/wifi/WifiManager;

.field private mContext:Landroid/content/Context;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mView:Landroid/view/View;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/settings_ext/wifi/bh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/wifi/bh;->TAG:Ljava/lang/String;

    .line 59
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/wifi/bh;->axU:[C

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ext/wifi/AccessPoint;Landroid/net/wifi/WifiManager;)V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object p1, p0, Lcom/android/settings_ext/wifi/bh;->mContext:Landroid/content/Context;

    .line 81
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "WriteWifiConfigToNfcDialog:wakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    iput-object p2, p0, Lcom/android/settings_ext/wifi/bh;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axW:Landroid/os/Handler;

    .line 85
    iput-object p3, p0, Lcom/android/settings_ext/wifi/bh;->hD:Landroid/net/wifi/WifiManager;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/bh;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a(Landroid/nfc/Tag;)V
    .locals 5

    .prologue
    const v2, 0x7f0909b9

    const v4, 0x7f0909b8

    .line 168
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "application/vnd.wfa.wsc"

    iget-object v2, p0, Lcom/android/settings_ext/wifi/bh;->axZ:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings_ext/wifi/bh;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 176
    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->connect()V

    .line 177
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v2, v1, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    invoke-virtual {v0, v2}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/bh;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ext/wifi/bj;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/bj;-><init>(Lcom/android/settings_ext/wifi/bh;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axX:Landroid/widget/TextView;

    const v1, 0x7f0909b7

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/wifi/bh;->a(Landroid/widget/TextView;I)V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->df:Landroid/widget/Button;

    const v1, 0x104067b

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/wifi/bh;->a(Landroid/widget/TextView;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    iget-object v1, p0, Lcom/android/settings_ext/wifi/bh;->axX:Landroid/widget/TextView;

    invoke-direct {p0, v1, v4}, Lcom/android/settings_ext/wifi/bh;->a(Landroid/widget/TextView;I)V

    .line 188
    sget-object v1, Lcom/android/settings_ext/wifi/bh;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    iget-object v1, p0, Lcom/android/settings_ext/wifi/bh;->axX:Landroid/widget/TextView;

    invoke-direct {p0, v1, v4}, Lcom/android/settings_ext/wifi/bh;->a(Landroid/widget/TextView;I)V

    .line 192
    sget-object v1, Lcom/android/settings_ext/wifi/bh;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axX:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ext/wifi/bh;->a(Landroid/widget/TextView;I)V

    .line 197
    sget-object v0, Lcom/android/settings_ext/wifi/bh;->TAG:Ljava/lang/String;

    const-string v1, "Tag is not writable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axX:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ext/wifi/bh;->a(Landroid/widget/TextView;I)V

    .line 201
    sget-object v0, Lcom/android/settings_ext/wifi/bh;->TAG:Ljava/lang/String;

    const-string v1, "Tag does not support NDEF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/bh;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ext/wifi/bl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings_ext/wifi/bl;-><init>(Lcom/android/settings_ext/wifi/bh;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/bh;Landroid/nfc/Tag;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings_ext/wifi/bh;->a(Landroid/nfc/Tag;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/wifi/bh;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/bh;->uf()V

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 269
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 270
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 271
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 272
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/android/settings_ext/wifi/bh;->axU:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 273
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/settings_ext/wifi/bh;->axU:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 258
    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    .line 260
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 261
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 260
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 265
    :cond_0
    return-object v2
.end method

.method private uf()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    iget-object v2, p0, Lcom/android/settings_ext/wifi/bh;->aur:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 227
    iget-object v2, p0, Lcom/android/settings_ext/wifi/bh;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    if-ne v2, v0, :cond_2

    .line 228
    iget-object v2, p0, Lcom/android/settings_ext/wifi/bh;->axV:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/bh;->aur:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0

    .line 229
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ext/wifi/bh;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ext/wifi/AccessPoint;->arZ:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/settings_ext/wifi/bh;->axV:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/bh;->aur:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axV:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 211
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 212
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/settings_ext/wifi/bh;->aur:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 254
    return-void

    .line 249
    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->aur:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/settings_ext/wifi/bh;->hD:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/bh;->asR:Lcom/android/settings_ext/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ext/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ext/wifi/bh;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    const-string v3, "102700%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iput-object v1, p0, Lcom/android/settings_ext/wifi/bh;->axZ:Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/bh;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 139
    new-instance v2, Lcom/android/settings_ext/wifi/bi;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/wifi/bi;-><init>(Lcom/android/settings_ext/wifi/bh;)V

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->aur:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axY:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axV:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/bh;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 156
    iget-object v1, p0, Lcom/android/settings_ext/wifi/bh;->aur:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 158
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axX:Landroid/widget/TextView;

    const v1, 0x7f0909b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mView:Landroid/view/View;

    const v1, 0x7f1001f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    :goto_1
    return-void

    .line 127
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axX:Landroid/widget/TextView;

    const v1, 0x7f0909b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, -0x3

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/bh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040147

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mView:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/bh;->setView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0, v5}, Lcom/android/settings_ext/wifi/bh;->setInverseBackgroundForced(Z)V

    .line 94
    const v0, 0x7f0909b3

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/bh;->setTitle(I)V

    .line 95
    invoke-virtual {p0, v5}, Lcom/android/settings_ext/wifi/bh;->setCancelable(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0909b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/settings_ext/wifi/bh;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/settings_ext/wifi/bh;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mView:Landroid/view/View;

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/bh;->aur:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mView:Landroid/view/View;

    const v1, 0x7f10034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axX:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->aur:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mView:Landroid/view/View;

    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axY:Landroid/widget/CheckBox;

    .line 106
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axY:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mView:Landroid/view/View;

    const v1, 0x7f100073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/bh;->mProgressBar:Landroid/widget/ProgressBar;

    .line 109
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/wifi/bh;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axV:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axV:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axV:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    invoke-virtual {p0, v4}, Lcom/android/settings_ext/wifi/bh;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/bh;->df:Landroid/widget/Button;

    .line 116
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/wifi/bh;->axW:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ext/wifi/bk;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/bk;-><init>(Lcom/android/settings_ext/wifi/bh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method
