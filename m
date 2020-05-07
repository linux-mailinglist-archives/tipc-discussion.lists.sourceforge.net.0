Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFA61C8D1D
	for <lists+tipc-discussion@lfdr.de>; Thu,  7 May 2020 15:57:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jWh1g-0003Th-Cz; Thu, 07 May 2020 13:57:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1jWh1X-0003T6-Lr
 for tipc-discussion@lists.sourceforge.net; Thu, 07 May 2020 13:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8TaX72aVGH0T/a/5Tx1j0Js5S9IXbxQkfjTQrD5Rqxk=; b=NtLVgm1y92KlcMveDviViiS6eX
 cSBn1UPGqK4WhCoFU6vDmrm5/zFbiPCDZCwQusrWxWEKSMebvxAKmciH8gzXes6Ci6sRsbRoeNeKJ
 MsBxORrOyihVzjRgNxo1jiy/TC7Bn451m4sUWbHy+Y6yC9vHYW44wCHeqqwutMPAG//o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8TaX72aVGH0T/a/5Tx1j0Js5S9IXbxQkfjTQrD5Rqxk=; b=Y5qOdlbpx24yl1B/rajDBYVzUz
 SAnLyWWNoheu6DLBDbIjE+AhIrb0W+zviImF9gDYrkfWcLi7AM6w3pxEEEXyU6gHLGGs6QVyUg0jy
 q//cSANtGwu7UfMk4mvlHrifSAxtRTTvWnV9whXyETWS5TLwo7Rt8u8clMUcoHxI3Xc4=;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jWh1V-00EGvX-9v
 for tipc-discussion@lists.sourceforge.net; Thu, 07 May 2020 13:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588859826;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8TaX72aVGH0T/a/5Tx1j0Js5S9IXbxQkfjTQrD5Rqxk=;
 b=JurDFQ8WKlNAfu1sUIQsgEV91Ad9DxC/BE2cJH5wnSnq/TK0E0wmU8pJrsFBJkJplYdBOM
 RxWFqu7BCThx92BsJI2qTCxdBZte7mtR7L/0x7YbRI8ochT9Cn0GEthfEowYauBwD1Isja
 qD59z2xqjY1Hkbsn06h0JezulC2IPBI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-416-vSFErvYhNHeMdW_K_50dAQ-1; Thu, 07 May 2020 09:57:02 -0400
X-MC-Unique: vSFErvYhNHeMdW_K_50dAQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 16ACF80ED8F;
 Thu,  7 May 2020 13:57:01 +0000 (UTC)
Received: from [10.10.118.229] (ovpn-118-229.rdu2.redhat.com [10.10.118.229])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6BD9010013BD;
 Thu,  7 May 2020 13:57:00 +0000 (UTC)
To: Tuong Lien <tuong.t.lien@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20200507111249.8760-1-tuong.t.lien@dektech.com.au>
 <20200507111249.8760-3-tuong.t.lien@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <72340518-d701-9c79-7923-205a5a768850@redhat.com>
Date: Thu, 7 May 2020 09:56:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200507111249.8760-3-tuong.t.lien@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jWh1V-00EGvX-9v
Subject: Re: [tipc-discussion] [net 2/2] tipc: fix failed service
 subscription deletion
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
Cc: tipc-dek@dektech.com.au
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 5/7/20 7:12 AM, Tuong Lien wrote:
> When a service subscription is expired or canceled by user, it needs to
> be deleted from the subscription list, so that new subscriptions can be
> registered (max = 65535 per net). However, there are two issues in code
> that can cause such an unused subscription to persist:
>
> 1) The 'tipc_conn_delete_sub()' has a loop on the subscription list but
> it makes a break shortly when the 1st subscription differs from the one
> specified, so the subscription will not be deleted.
>
> 2) In case a subscription is canceled, the code to remove the
> 'TIPC_SUB_CANCEL' flag from the subscription filter does not work if it
> is a local subscription (i.e. the little endian isn't involved). So, it
> will be no matches when looking for the subscription to delete later.
>
> The subscription(s) will be removed eventually when the user terminates
> its topology connection but that could be a long time later. Meanwhile,
> the number of available subscriptions may be exhausted.
>
> This commit fixes the two issues above, so as needed a subscription can
> be deleted correctly.
>
> Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
> ---
>   net/tipc/topsrv.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/net/tipc/topsrv.c b/net/tipc/topsrv.c
> index 399a89f6f1bf..44609238849e 100644
> --- a/net/tipc/topsrv.c
> +++ b/net/tipc/topsrv.c
> @@ -237,8 +237,6 @@ static void tipc_conn_delete_sub(struct tipc_conn *con, struct tipc_subscr *s)
>   		if (!s || !memcmp(s, &sub->evt.s, sizeof(*s))) {
>   			tipc_sub_unsubscribe(sub);
>   			atomic_dec(&tn->subscription_count);
> -		} else if (s) {
> -			break;
ok
>   		}
>   	}
>   	spin_unlock_bh(&con->sub_lock);
> @@ -364,7 +362,10 @@ static int tipc_conn_rcv_sub(struct tipc_topsrv *srv,
>   	struct tipc_subscription *sub;
>   
>   	if (tipc_sub_read(s, filter) & TIPC_SUB_CANCEL) {
> -		s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
> +		if (!(s->filter & TIPC_FILTER_MASK))
> +			s->filter &= __constant_ntohl(~TIPC_SUB_CANCEL);
> +		else
> +			s->filter &= ~TIPC_SUB_CANCEL;
It has a value to keep the little-endian/big-endian issues isolated in 
separate code, as I did
with the macros tipc_sub_read() and tipc_evt_write(). In this case we 
need another macro,
tipc_sub_write(), despite the fact that it is used only once.

BR
///jon

>   		tipc_conn_delete_sub(con, s);
>   		return 0;
>   	}



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
