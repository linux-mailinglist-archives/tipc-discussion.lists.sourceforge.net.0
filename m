Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD69A463BD9
	for <lists+tipc-discussion@lfdr.de>; Tue, 30 Nov 2021 17:34:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1ms65H-0006K5-0K; Tue, 30 Nov 2021 16:34:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1ms5u5-000657-GU
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Nov 2021 16:22:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QqhXLuNCIvKe8AtTcNJoH8Q/Fe7oE+Sg5l07uwYnZlE=; b=SJbzjJogO9iT7P3wV6g/H5TygB
 UlQE/cTy7FgVpIJvh0ZoMJ6dtBt9h7SZCsdnVklbGFv3C1slm7seEgcbM1r5Iih8JhNij7K2G4z4N
 LCSpALcqQBKIy4/G2T6ucEuWQ+sQy7btt89QEvLTNFJIrQEcMqAsCzl20rRGT/1KZG7Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QqhXLuNCIvKe8AtTcNJoH8Q/Fe7oE+Sg5l07uwYnZlE=; b=FVz4Nr273uwufsjlRlyP0r0hui
 T8cSH0C0WKL4up5zcX48NMuQ0ir8nYcPzmnXAM0mFCLLbs6N3IWvkua3Vhzekq8Li7ypPxdPf92F/
 XoM2LSdNMnQKFkqU1oCV5RCE9FgIi+z74SbeRgr6ruME1HYCMZm6xMDc+xMLfGJ3KTYE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ms5tz-00GIC0-Mr
 for tipc-discussion@lists.sourceforge.net; Tue, 30 Nov 2021 16:22:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638289357;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QqhXLuNCIvKe8AtTcNJoH8Q/Fe7oE+Sg5l07uwYnZlE=;
 b=VI2s5GqrtmjCR9ZqN/kwEho7NyWe9E4UCH007kttmPMGVTzvmatKn+z7C+lj08G7be0cqR
 3LAcbDHSZ9h3sdzrs5vis/TbXMusPcDZ/WhiSFoIathWJ8fRZVLJZ/5yF09iYsYN88RFgE
 pvr1zd+hBT9p5G5GzXPhNOAZi98hjWc=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-516-y0V5d4rvMZe0mglGIBdqOA-1; Tue, 30 Nov 2021 11:20:35 -0500
X-MC-Unique: y0V5d4rvMZe0mglGIBdqOA-1
Received: by mail-qt1-f200.google.com with SMTP id
 e2-20020ac84142000000b002b4bc4ffc49so22825583qtm.8
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 30 Nov 2021 08:20:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=QqhXLuNCIvKe8AtTcNJoH8Q/Fe7oE+Sg5l07uwYnZlE=;
 b=mTsvu1sVzt8kmohmctAZFTi6g88Hbe8pAX5zKrCl+LNk1CFz2jiIt0pQ1rqrtOOtxH
 ekVpVTcyBY+QJg8W5PiBRfgH3mEQTU25QsuVoOpd5GLJDyM+adVNOaiFcFOSRYjNvx5I
 qFVh55g89Z1z73+mQ4sTUCJs9LOBywisFRxB+ThP0/1hLO3Ms5thEky/ZTrxTTGwuNGi
 xV5Ko8isqdMXHKngVvlaUnuYyKGjoPwsoLgUzgLi3H6HJaqQlCJ6SVOp5ZBeRQrpABxm
 LvYp8q2id4EpJpDHrwLQ0IeE/2NiGt1mTDoWbFRu2NWsKagdur5Vzdy5Ipj9QBCGMb5/
 m19A==
X-Gm-Message-State: AOAM530dXeQZrwF7GlO3Lzc2xiQsgAfySRnX17QUkipofC9D2+G/Kpx4
 3l5svwEz4s2mmV7/IyYIRa4bVu5aCKbW32RKyqGqCaY4VXddAxTyIixG4M6CjqssmiaUJMQo/oL
 QduiZ99T532U/J7opdhJuOZBcigyLUBHua7Uk
X-Received: by 2002:a05:6214:da9:: with SMTP id h9mr39237qvh.2.1638289234570; 
 Tue, 30 Nov 2021 08:20:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw8ue9l95jqi83HUHdk76qmugIbYtAgCl97czymSD3izZ0JCRmun4xFRU3PyxXXlNrJVYp48g==
X-Received: by 2002:a05:6214:da9:: with SMTP id h9mr39187qvh.2.1638289234220; 
 Tue, 30 Nov 2021 08:20:34 -0800 (PST)
Received: from [10.0.0.96] ([24.225.241.171])
 by smtp.gmail.com with ESMTPSA id n19sm11096355qta.78.2021.11.30.08.20.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Nov 2021 08:20:33 -0800 (PST)
Message-ID: <8e836236-11b7-3c3c-fa14-92e46b561874@redhat.com>
Date: Tue, 30 Nov 2021 11:23:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
To: Xin Long <lucien.xin@gmail.com>, tipc-discussion@lists.sourceforge.net
References: <8d3b6b985effdadac9cba9c3108ec0ba55bfe5b0.1637785716.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <8d3b6b985effdadac9cba9c3108ec0ba55bfe5b0.1637785716.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.3 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/24/21 15:28, Xin Long wrote: > When key_exchange is
 disabled, there is no reason to accept MSG_CRYPTO > msgs if it doesn't send
 MSG_CRYPTO msgs. > > Signed-off-by: Xin Long <lucien.xin@gmail.com [...] 
 Content analysis details:   (-3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [170.10.129.124 listed in dnsbl-1.uceprotect.net]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.2 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ms5tz-00GIC0-Mr
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: discard MSG_CRYPTO
 msgs when key_exchange_enabled is not set
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 11/24/21 15:28, Xin Long wrote:
> When key_exchange is disabled, there is no reason to accept MSG_CRYPTO
> msgs if it doesn't send MSG_CRYPTO msgs.
>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/link.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 09ae8448f394..8d9e09f48f4c 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1298,7 +1298,8 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
>   		return false;
>   #ifdef CONFIG_TIPC_CRYPTO
>   	case MSG_CRYPTO:
> -		if (TIPC_SKB_CB(skb)->decrypted) {
> +		if (sysctl_tipc_key_exchange_enabled &&
> +		    TIPC_SKB_CB(skb)->decrypted) {
>   			tipc_crypto_msg_rcv(l->net, skb);
>   			return true;
>   		}
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
