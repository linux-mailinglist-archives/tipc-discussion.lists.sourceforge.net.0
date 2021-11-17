Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BB4455022
	for <lists+tipc-discussion@lfdr.de>; Wed, 17 Nov 2021 23:04:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mnT2D-00017B-D5; Wed, 17 Nov 2021 22:04:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1mnT2C-000175-8R
 for tipc-discussion@lists.sourceforge.net; Wed, 17 Nov 2021 22:04:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UM3rOln8kBcAURl+w/UPvP+woZK+h5DIoF92PXfCfdQ=; b=EecIkWvu7meIbAV+QBwfQrE0Ao
 dpgcunBghR89LFiRl9zGOtKmyDJbY4k5iauOyjLQaPHKkFEXsfwr+R5gFC1pNueMvvvs6dFfQzzpd
 asOZ6+0HinnfLpH3WcaWUT/8+4Ou9VpFBnsOSCNdHnpR0zDFLwEHhWB2W4OFcqeABfVE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UM3rOln8kBcAURl+w/UPvP+woZK+h5DIoF92PXfCfdQ=; b=ClWvStn5Yga6mt/6OuhjtSPeVO
 UNN02rntypObU4ChWlMkgxWQx5KUuF20qcVFNktDxWdd7f934jzkPn9OFc8/x+bkD/yEb61d9RcNC
 ctOUzRLY9xhNvauAIcIi3EpNJYduR9E9+MNYFNt/n9YC8dCysjw1rAhsk6Hd+cXa4qa8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mnT22-00052B-VB
 for tipc-discussion@lists.sourceforge.net; Wed, 17 Nov 2021 22:04:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637186628;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UM3rOln8kBcAURl+w/UPvP+woZK+h5DIoF92PXfCfdQ=;
 b=dOiNVyE/DX6axuTysdNnu5K4bDhMGaY8fPmMrydCINAfYY7//b9LDR6ALn6j63IjV4HnFv
 K+XWpBrP++Be1+u+yve3m/8dapCkk9nqWJwn6YQEkgvTGlDROKiW8OllK6GGf9J9ZPYrt3
 Rfo7RSNZnAibM31pjDaCQiAGJXlyFx8=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-47-qUkOEjYeOjW03eVAEWp6Xg-1; Wed, 17 Nov 2021 17:03:46 -0500
X-MC-Unique: qUkOEjYeOjW03eVAEWp6Xg-1
Received: by mail-qk1-f200.google.com with SMTP id
 bj10-20020a05620a190a00b004681da13edcso3110628qkb.1
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 17 Nov 2021 14:03:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=UM3rOln8kBcAURl+w/UPvP+woZK+h5DIoF92PXfCfdQ=;
 b=SSaX5NZTHuuU/37BnFeAhgkaDxr/+E6iTHi6LtcaQdNmBPxuFOU16bw6+/1Q9Km10I
 u5eBmyEyp8mzczt6dTBi78GQ88eIrI5Viw88Qd7LAitZadg9Zeh9tAyNFkjTDPwVgIZX
 mHK1dfgR4Qy2SSZG35jJFtuX8a7qfKyocU/qYwSoOrN0xfHjUi0oFS5etuAsJF2dr3/a
 yA2LPYjh+NhODFVAZjVHnfojoigjzrOoHEzvYmi6WrHHGozOePkXOeMlPK0nrD2nDm4w
 b3R0zXuNvQELGQ97J0o1dhP55J/9U30KRb9+v2m4hMqa8G3RoOUHWjkaBqNvosnxtJN2
 h9iw==
X-Gm-Message-State: AOAM531v6Nv5gzwG+ShUBCn6O7Kt1QXtMQCsk1L0uM3/b01r8KcL1XwE
 i3EY3QpTqJbD2+LbbFaf5yX8kEiMTqqVc13jU0yeY8zDm6yG1M8m8lTnByEdJUm70PIl8fdGBsh
 j6Dm757DOJomQ9M6YWN3XWOO11tWS5uNkHIIT
X-Received: by 2002:ac8:5c53:: with SMTP id j19mr21301636qtj.40.1637186625569; 
 Wed, 17 Nov 2021 14:03:45 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwKbmfhLXEcjpNEixYPWQ886lMm649m9jzw2P56FDGKONoExY3utbgtPOsfA1loXEghxgDNQQ==
X-Received: by 2002:ac8:5c53:: with SMTP id j19mr21301599qtj.40.1637186625332; 
 Wed, 17 Nov 2021 14:03:45 -0800 (PST)
Received: from [10.0.0.96] ([24.225.241.171])
 by smtp.gmail.com with ESMTPSA id w10sm691272qkp.121.2021.11.17.14.03.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 14:03:44 -0800 (PST)
Message-ID: <0aea60c5-28d5-258a-3a32-bae1895a96ee@redhat.com>
Date: Wed, 17 Nov 2021 17:06:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
To: Tadeusz Struk <tadeusz.struk@linaro.org>, davem@davemloft.net
References: <20211115160143.5099-1-tadeusz.struk@linaro.org>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20211115160143.5099-1-tadeusz.struk@linaro.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.6 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Acked-by: Jon Maloy <jmaloy@redhat.com> On 11/15/21 11:01,
 Tadeusz Struk wrote: > kmemdup can return a null pointer so need to check
 for it,
 otherwise > the null key will be dereferenced later in tipc_crypto_key_xmit
 as > can be seen in the [...] 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mnT22-00052B-VB
Subject: Re: [tipc-discussion] [PATCH v2] tipc: check for null after calling
 kmemdup
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Acked-by: Jon Maloy <jmaloy@redhat.com>

On 11/15/21 11:01, Tadeusz Struk wrote:
> kmemdup can return a null pointer so need to check for it, otherwise
> the null key will be dereferenced later in tipc_crypto_key_xmit as
> can be seen in the trace [1].
>
> Cc: Jon Maloy <jmaloy@redhat.com>
> Cc: Ying Xue <ying.xue@windriver.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org
> Cc: tipc-discussion@lists.sourceforge.net
> Cc: linux-kernel@vger.kernel.org
> Cc: stable@vger.kernel.org # 5.15, 5.14, 5.10
>
> [1] https://syzkaller.appspot.com/bug?id=bca180abb29567b189efdbdb34cbf7ba851c2a58
>
> Reported-by: Dmitry Vyukov <dvyukov@google.com>
> Signed-off-by: Tadeusz Struk <tadeusz.struk@linaro.org>
> ---
> Changed in v2:
> - use tipc_aead_free() to free all crytpo tfm instances
>    that might have been allocated before the fail.
> ---
>   net/tipc/crypto.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/net/tipc/crypto.c b/net/tipc/crypto.c
> index dc60c32bb70d..d293614d5fc6 100644
> --- a/net/tipc/crypto.c
> +++ b/net/tipc/crypto.c
> @@ -597,6 +597,10 @@ static int tipc_aead_init(struct tipc_aead **aead, struct tipc_aead_key *ukey,
>   	tmp->cloned = NULL;
>   	tmp->authsize = TIPC_AES_GCM_TAG_SIZE;
>   	tmp->key = kmemdup(ukey, tipc_aead_key_size(ukey), GFP_KERNEL);
> +	if (!tmp->key) {
> +		tipc_aead_free(&tmp->rcu);
> +		return -ENOMEM;
> +	}
>   	memcpy(&tmp->salt, ukey->key + keylen, TIPC_AES_GCM_SALT_SIZE);
>   	atomic_set(&tmp->users, 0);
>   	atomic64_set(&tmp->seqno, 0);



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
