.class Lcom/android/settings/wifi/aa;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/V;


# instance fields
.field private final anX:Landroid/content/DialogInterface$OnClickListener;

.field private final asR:Lcom/android/settings/wifi/AccessPoint;

.field private final auo:Z

.field private avn:Lcom/android/settings/wifi/T;

.field private avv:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f0a0041

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 61
    iput-boolean p4, p0, Lcom/android/settings/wifi/aa;->auo:Z

    .line 62
    iput-object p2, p0, Lcom/android/settings/wifi/aa;->anX:Landroid/content/DialogInterface$OnClickListener;

    .line 63
    iput-object p3, p0, Lcom/android/settings/wifi/aa;->asR:Lcom/android/settings/wifi/AccessPoint;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/aa;->avv:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/aa;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 55
    iput-boolean p5, p0, Lcom/android/settings/wifi/aa;->avv:Z

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/aa;)Lcom/android/settings/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->asR:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/aa;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/aa;->bo(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/aa;)Lcom/android/settings/wifi/T;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->avn:Lcom/android/settings/wifi/T;

    return-object v0
.end method

.method private bo(Z)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->mView:Landroid/view/View;

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 173
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 174
    if-eqz p1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 178
    if-ltz v2, :cond_0

    .line 179
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 181
    :cond_0
    return-void

    .line 174
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/wifi/aa;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 113
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/aa;->anX:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/aa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    return-void
.end method

.method public g(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 118
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings/wifi/aa;->anX:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/aa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    return-void
.end method

.method public h(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 123
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/aa;->anX:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/aa;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/wifi/aa;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040130

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/aa;->mView:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/aa;->setView(Landroid/view/View;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/aa;->setInverseBackgroundForced(Z)V

    .line 77
    new-instance v0, Lcom/android/settings/wifi/T;

    iget-object v1, p0, Lcom/android/settings/wifi/aa;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/aa;->asR:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/settings/wifi/aa;->auo:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/wifi/T;-><init>(Lcom/android/settings/wifi/V;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/aa;->avn:Lcom/android/settings/wifi/T;

    .line 78
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iget-boolean v0, p0, Lcom/android/settings/wifi/aa;->avv:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->avn:Lcom/android/settings/wifi/T;

    invoke-virtual {v0}, Lcom/android/settings/wifi/T;->uM()V

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/aa;->vg()V

    .line 89
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->avn:Lcom/android/settings/wifi/T;

    invoke-virtual {v0}, Lcom/android/settings/wifi/T;->uf()V

    goto :goto_0
.end method

.method public va()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 98
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/aa;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public vb()Lcom/android/settings/wifi/T;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->avn:Lcom/android/settings/wifi/T;

    return-object v0
.end method

.method public vg()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->asR:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/aa;->asR:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->asj:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->mView:Landroid/view/View;

    const v2, 0x7f10030a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    if-eqz v1, :cond_1

    const v2, 0x7f0202a0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/aa;->bo(Z)V

    .line 132
    new-instance v2, Lcom/android/settings/wifi/ab;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/ab;-><init>(Lcom/android/settings/wifi/aa;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->mView:Landroid/view/View;

    const v1, 0x7f10030c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 146
    new-instance v1, Lcom/android/settings/wifi/ac;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/ac;-><init>(Lcom/android/settings/wifi/aa;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/aa;->mView:Landroid/view/View;

    const v1, 0x7f10030d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/android/settings/wifi/ad;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/ad;-><init>(Lcom/android/settings/wifi/aa;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 130
    :cond_1
    const v2, 0x7f020293

    goto :goto_1
.end method
