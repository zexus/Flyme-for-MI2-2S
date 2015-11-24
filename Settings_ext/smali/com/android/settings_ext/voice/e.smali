.class public final Lcom/android/settings_ext/voice/e;
.super Landroid/preference/Preference;
.source "VoiceInputPreference.java"


# instance fields
.field private abP:Landroid/widget/RadioButton;

.field private volatile ald:Z

.field private ale:Landroid/view/View;

.field private final alg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final ann:Ljava/lang/CharSequence;

.field private final ano:Ljava/lang/CharSequence;

.field private final anp:Landroid/content/ComponentName;

.field private final anq:Lcom/android/settings_ext/voice/l;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ext/voice/b;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings_ext/voice/l;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/settings_ext/voice/f;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/voice/f;-><init>(Lcom/android/settings_ext/voice/e;)V

    iput-object v0, p0, Lcom/android/settings_ext/voice/e;->alg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 73
    const v0, 0x7f0400c5

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/voice/e;->setLayoutResource(I)V

    .line 75
    iput-object p5, p0, Lcom/android/settings_ext/voice/e;->anq:Lcom/android/settings_ext/voice/l;

    .line 76
    iget-object v0, p2, Lcom/android/settings_ext/voice/b;->label:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings_ext/voice/e;->mLabel:Ljava/lang/CharSequence;

    .line 77
    iget-object v0, p2, Lcom/android/settings_ext/voice/b;->appLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings_ext/voice/e;->ann:Ljava/lang/CharSequence;

    .line 78
    iput-object p4, p0, Lcom/android/settings_ext/voice/e;->ano:Ljava/lang/CharSequence;

    .line 79
    iget-object v0, p2, Lcom/android/settings_ext/voice/b;->ank:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings_ext/voice/e;->anp:Landroid/content/ComponentName;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/voice/e;->ald:Z

    .line 82
    iget-object v0, p2, Lcom/android/settings_ext/voice/b;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/voice/e;->setKey(Ljava/lang/String;)V

    .line 83
    iget-object v0, p2, Lcom/android/settings_ext/voice/b;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/voice/e;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0, p3}, Lcom/android/settings_ext/voice/e;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/voice/e;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->anp:Landroid/content/ComponentName;

    return-object v0
.end method

.method private b(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 138
    const-string v0, "VoiceInputPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Displaying data alert for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ext/voice/e;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ext/voice/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ext/voice/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/settings_ext/voice/e;->ano:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ext/voice/e;->ann:Ljava/lang/CharSequence;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 143
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ext/voice/i;

    invoke-direct {v2, p0, p2}, Lcom/android/settings_ext/voice/i;-><init>(Lcom/android/settings_ext/voice/e;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 156
    return-void
.end method

.method private sN()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->ano:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/settings_ext/voice/e;->ald:Z

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->anq:Lcom/android/settings_ext/voice/l;

    invoke-interface {v0}, Lcom/android/settings_ext/voice/l;->se()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/voice/e;->aO(Z)V

    goto :goto_0

    .line 186
    :cond_1
    if-eqz p2, :cond_3

    .line 188
    invoke-direct {p0}, Lcom/android/settings_ext/voice/e;->sN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Lcom/android/settings_ext/voice/j;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ext/voice/j;-><init>(Lcom/android/settings_ext/voice/e;Landroid/widget/CompoundButton;)V

    new-instance v1, Lcom/android/settings_ext/voice/k;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ext/voice/k;-><init>(Lcom/android/settings_ext/voice/e;Landroid/widget/CompoundButton;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/voice/e;->b(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/voice/e;->c(Landroid/widget/Checkable;)V

    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/voice/e;->aO(Z)V

    goto :goto_0
.end method

.method aO(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->anp:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->ale:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    if-eqz p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->ale:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->ale:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->ale:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->ale:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->ale:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method c(Landroid/widget/Checkable;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->anq:Lcom/android/settings_ext/voice/l;

    invoke-interface {v0}, Lcom/android/settings_ext/voice/l;->se()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->anq:Lcom/android/settings_ext/voice/l;

    invoke-interface {v0}, Lcom/android/settings_ext/voice/l;->se()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->anq:Lcom/android/settings_ext/voice/l;

    invoke-interface {v0, p1}, Lcom/android/settings_ext/voice/l;->a(Landroid/widget/Checkable;)V

    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->anq:Lcom/android/settings_ext/voice/l;

    invoke-virtual {p0}, Lcom/android/settings_ext/voice/e;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ext/voice/l;->bA(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/voice/e;->aO(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->anq:Lcom/android/settings_ext/voice/l;

    invoke-interface {v0}, Lcom/android/settings_ext/voice/l;->sf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/voice/e;->callChangeListener(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->anq:Lcom/android/settings_ext/voice/l;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    const v0, 0x7f1001c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 96
    iget-object v2, p0, Lcom/android/settings_ext/voice/e;->alg:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ext/voice/e;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/voice/e;->anq:Lcom/android/settings_ext/voice/l;

    invoke-interface {v3}, Lcom/android/settings_ext/voice/l;->sf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    iget-object v3, p0, Lcom/android/settings_ext/voice/e;->anq:Lcom/android/settings_ext/voice/l;

    invoke-interface {v3, v0}, Lcom/android/settings_ext/voice/l;->a(Landroid/widget/Checkable;)V

    .line 103
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ext/voice/e;->ald:Z

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 105
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ext/voice/e;->ald:Z

    .line 107
    iput-object v0, p0, Lcom/android/settings_ext/voice/e;->abP:Landroid/widget/RadioButton;

    .line 109
    const v3, 0x7f1001c9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 110
    new-instance v4, Lcom/android/settings_ext/voice/g;

    invoke-direct {v4, p0, v0}, Lcom/android/settings_ext/voice/g;-><init>(Lcom/android/settings_ext/voice/e;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f1001ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/voice/e;->ale:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->ale:Landroid/view/View;

    new-instance v3, Lcom/android/settings_ext/voice/h;

    invoke-direct {v3, p0}, Lcom/android/settings_ext/voice/h;-><init>(Lcom/android/settings_ext/voice/e;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/voice/e;->aO(Z)V

    .line 128
    return-object v1
.end method

.method public sO()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings_ext/voice/e;->abP:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->performClick()Z

    .line 160
    return-void
.end method
