.class public Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;
.super Lcom/android/settings_ext/BaseEditFragment;
.source "NewFingerprintInternalActivity.java"


# instance fields
.field private fh:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private oX:Lcom/android/settings_ext/cu;

.field private ot:Landroid/app/AlertDialog;

.field private qE:Landroid/widget/TextView;

.field private sJ:I

.field private sK:Landroid/os/Vibrator;

.field private sL:Landroid/widget/TextView;

.field private sM:Landroid/widget/ImageView;

.field private sN:Landroid/widget/VideoView;

.field private sO:Landroid/widget/VideoView;

.field private sP:Landroid/widget/Button;

.field private sQ:Landroid/view/View;

.field private sR:Landroid/app/AlertDialog;

.field private sS:Z

.field private sT:I

.field private sU:Ljava/util/List;

.field private final sV:Ljava/lang/Runnable;

.field private sW:Lcom/android/settings_ext/ct;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/settings_ext/BaseEditFragment;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->oX:Lcom/android/settings_ext/cu;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sJ:I

    .line 54
    iput-object v1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sK:Landroid/os/Vibrator;

    .line 63
    iput-object v1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->ot:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sR:Landroid/app/AlertDialog;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->mHandler:Landroid/os/Handler;

    .line 65
    iput-boolean v2, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sS:Z

    .line 66
    iput v2, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sT:I

    .line 154
    new-instance v0, Lcom/android/settings_ext/eQ;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/eQ;-><init>(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sV:Ljava/lang/Runnable;

    .line 189
    new-instance v0, Lcom/android/settings_ext/eR;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/eR;-><init>(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sW:Lcom/android/settings_ext/ct;

    return-void
.end method

.method private D(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 175
    if-nez v1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private Q(I)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e47

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;I)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->Q(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->ot:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->D(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/AlertDialog;)V
    .locals 1

    .prologue
    .line 331
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 334
    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;Landroid/widget/VideoView;)V
    .locals 0

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 185
    invoke-virtual {p2}, Landroid/widget/VideoView;->start()V

    .line 187
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;Landroid/widget/VideoView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/net/Uri;Landroid/widget/VideoView;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sS:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sS:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sO:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->ot:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sL:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->qE:Landroid/widget/TextView;

    return-object v0
.end method

.method private ez()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->oX:Lcom/android/settings_ext/cu;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->oX:Lcom/android/settings_ext/cu;

    invoke-virtual {v0}, Lcom/android/settings_ext/cu;->dF()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->oX:Lcom/android/settings_ext/cu;

    .line 105
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sP:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sQ:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    const v0, 0x7f040094

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->fh:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->fh:Landroid/view/View;

    const v1, 0x7f100163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sL:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->fh:Landroid/view/View;

    const v1, 0x7f100164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->qE:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->fh:Landroid/view/View;

    const v1, 0x7f100160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sM:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->fh:Landroid/view/View;

    const v1, 0x7f100161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sN:Landroid/widget/VideoView;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->fh:Landroid/view/View;

    const v1, 0x7f100162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sO:Landroid/widget/VideoView;

    .line 117
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->fh:Landroid/view/View;

    const v1, 0x7f100165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sP:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sN:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sO:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sO:Landroid/widget/VideoView;

    new-instance v1, Lcom/android/settings_ext/eO;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/eO;-><init>(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sM:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sL:Landroid/widget/TextView;

    const v1, 0x7f090e3f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->qE:Landroid/widget/TextView;

    const v1, 0x7f090e40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 134
    const-string v0, "core_scan_gesture"

    invoke-direct {p0, v0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->D(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sN:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sN:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 139
    :cond_0
    const-string v0, "core_scan_output_%02d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->D(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sO:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sP:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ext/eP;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/eP;-><init>(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->fh:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->ez()V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->ot:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/app/AlertDialog;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sR:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->a(Landroid/app/AlertDialog;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    invoke-super {p0}, Lcom/android/settings_ext/BaseEditFragment;->onPause()V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings_ext/BaseEditFragment;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->ez()V

    .line 83
    new-instance v0, Lcom/android/settings_ext/cu;

    invoke-virtual {p0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/cu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->oX:Lcom/android/settings_ext/cu;

    .line 84
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->oX:Lcom/android/settings_ext/cu;

    invoke-virtual {v0}, Lcom/android/settings_ext/cu;->dE()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sU:Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->oX:Lcom/android/settings_ext/cu;

    iget-object v1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sW:Lcom/android/settings_ext/ct;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/cu;->a(Lcom/android/settings_ext/ct;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sK:Landroid/os/Vibrator;

    .line 88
    iget-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sV:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings_ext/BaseEditFragment;->onStart()V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->sQ:Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    return-void
.end method
