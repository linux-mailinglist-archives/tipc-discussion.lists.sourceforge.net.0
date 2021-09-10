Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A29AE40604F
	for <lists+tipc-discussion@lfdr.de>; Fri, 10 Sep 2021 02:04:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mOU1Y-0004pA-An; Fri, 10 Sep 2021 00:04:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1mOU1R-0004nz-Dx
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Sep 2021 00:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G6XOqaesl4DDKQKqixgo07fDrd1Fcc7aYPMBmuwUbw8=; b=EvEiDvvo47eHSvW2aGbTC8BXu9
 BnJ3KolbwEXpWoAoLg4O5lNQAmiEuIll40+tI0CMs3khlBUTdyzjUjqu/UuyCw8IlXg7hlIykagsp
 Wn8yVocPOvuC/8ynd6LJRniUi6aHqOTpaCloOzKgxmYonvusjuMmi3TURwiXwHHIylos=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=G6XOqaesl4DDKQKqixgo07fDrd1Fcc7aYPMBmuwUbw8=; b=M+IO5EZ2DYhPIA5lb7ndPS6L/u
 zfIVR8lrf1bnw2TPVxXoe/h5ioktMMArvBNOo5xioZCq49vd2vKxH5TzECEOtFvYgM+7/M+r7bJ1g
 +95g/6uKUaMObpujvzcrdR5At1e8RUeMDaNcqtH+6cBgTGqcfd0tdb1lHFnmRL0UHxcM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mOU1K-005RGo-JY
 for tipc-discussion@lists.sourceforge.net; Fri, 10 Sep 2021 00:04:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631232228;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G6XOqaesl4DDKQKqixgo07fDrd1Fcc7aYPMBmuwUbw8=;
 b=FrdasRWSalCim2HKhZq/WTFH6XGMyAbu2MZJ+e14C0bgTR+MjRAlw6p7EfoA5bCi+L04J3
 0CMbRcuvYRi3DoV8ZjPWYzHvJwnUx5VotE6hBF2EG91VXI4TL9wn+bkJWKytqtzmN4YNqD
 0kMSSb6EvXO53FBcK7eIpSUiqQGccf8=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-533-P_EXf_A8PSidzFhIdOFr-A-1; Thu, 09 Sep 2021 20:03:46 -0400
X-MC-Unique: P_EXf_A8PSidzFhIdOFr-A-1
Received: by mail-qt1-f197.google.com with SMTP id
 b15-20020a05622a020f00b0029e28300d94so10996907qtx.16
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 09 Sep 2021 17:03:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=G6XOqaesl4DDKQKqixgo07fDrd1Fcc7aYPMBmuwUbw8=;
 b=A3OdI2klpH3sz/0NT3Ly9kpsoM/0WMfZSHoqdkCQuo/Xrde0Y1oPrmoRlPsKUFJVFp
 u19ffQ0yUY1PLkbdtzNf0AyvHawfgakfeGOtZknEBX1cTrSxGXvVF1B5FLhx3FhrghYI
 tgENAcvmxWgz6lMGLTpUjSsWbCrQ5G8Z4qcDEyCDei32tc2gLv0zpNr5WgCY51sWTTxB
 SlU9jyt7p6zd5YpBVoBGN2Hs1zBNI4UObNdAsfswQ4bSrMsnPNA/SLBKHsKqy3rP6Mhw
 hJxorjlLtCzCva/O4ZApVTKN9VxNdb0OHK4bSu4i5UxjMa5l72+0GCY+0cL8Vxl3JjMN
 EbYw==
X-Gm-Message-State: AOAM531XKliBw1pbSoUSFjb52yoRztBId1hCKtM53peVFYRQhVru5amq
 nbgrnAuFOtNzbuNbnraHPdq7e30q7A6papduycdTD3r8nz4Moa+qlJcX0xXCZ3pEIMlHIbTalhv
 jQ4IOb/Es6XZR72yK5OILV1pAGM6xzm6T8drvFJ8WcEchhckvG0hpKfpDNa/L56b9WSGm+D6TdC
 41Uhg4tP7+AA==
X-Received: by 2002:ac8:96:: with SMTP id c22mr5405221qtg.223.1631232224604;
 Thu, 09 Sep 2021 17:03:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJya7tUyLea/gL6RmJP+pKfm4k23zXA8KCFtdUbxoJwCA/ohcbUb5zGNmMDKI4DIsiQ9u/F+sg==
X-Received: by 2002:ac8:96:: with SMTP id c22mr5405100qtg.223.1631232222886;
 Thu, 09 Sep 2021 17:03:42 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id c72sm2525697qkg.5.2021.09.09.17.03.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Sep 2021 17:03:42 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, tipc-discussion@lists.sourceforge.net
References: <cover.1625595705.git.lucien.xin@gmail.com>
 <49e48ff31811b6ccd5a598691a09697f9dbe27e6.1625595705.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <27939cdc-5271-acf9-19fb-1821e9fe8efe@redhat.com>
Date: Thu, 9 Sep 2021 20:05:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <49e48ff31811b6ccd5a598691a09697f9dbe27e6.1625595705.git.lucien.xin@gmail.com>
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
 Content preview:  On 06/07/2021 14:22,
 Xin Long wrote: > This patch is to receive
 and process the probe ack by checking > msg_max_pkt() == l->pl.probe_size
 then does state transition > in tipc_link_pl_recv(). > > For t [...] 
 Content analysis details:   (-3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lwn.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mOU1K-005RGo-JY
Subject: Re: [tipc-discussion] [PATCH net-next 5/8] tipc: add probe recv and
 state transition
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



On 06/07/2021 14:22, Xin Long wrote:
> This patch is to receive and process the probe ack by checking
> msg_max_pkt() == l->pl.probe_size then does state transition
> in tipc_link_pl_recv().
> 
> For the details, see:
> 
>    https://lwn.net/Articles/860385/
> 
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/link.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 48 insertions(+)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 3af6c04f82c2..241c9378e258 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -293,6 +293,7 @@ static int tipc_link_advance_transmq(struct tipc_link *l, struct tipc_link *r,
>   static void tipc_link_update_cwin(struct tipc_link *l, int released,
>   				  bool retransmitted);
>   static void tipc_link_pl_send(struct tipc_link *l);
> +static void tipc_link_pl_recv(struct tipc_link *l);
>   /*
>    *  Simple non-static link routines (i.e. referenced outside this file)
>    */
> @@ -2333,6 +2334,13 @@ static int tipc_link_proto_rcv(struct tipc_link *l, struct sk_buff *skb,
>   			break;
>   		}
>   
> +		if (!reply && msg_max_pkt(hdr) == l->pl.probe_size) {
> +			tipc_link_pl_recv(l);
> +			if (l->pl.state == TIPC_PL_COMPLETE)
> +				break;
> +			tipc_link_build_proto_msg(l, STATE_MSG, PROBE_PLPMTU, 0, 0, 0, 0, xmitq);
> +		}
> +
>   		/* Receive Gap ACK blocks from peer if any */
>   		glen = tipc_get_gap_ack_blks(&ga, l, hdr, true);
>   
> @@ -3061,3 +3069,43 @@ static void tipc_link_pl_send(struct tipc_link *l)
>   	}
>   	l->pl.count = TIPC_PROBE_INTERVAL;
>   }
> +
> +static void tipc_link_pl_recv(struct tipc_link *l)
> +{
> +	pr_debug("%s: PLPMTUD: link: %p, state: %d, pmtu: %d, size: %d, high: %d\n",
> +		 __func__, l, l->pl.state, l->pl.pmtu, l->pl.probe_size, l->pl.probe_high);

Many of these lines will not pass checkpatch.
///jon

> +
> +	l->pl.pmtu = l->pl.probe_size;
> +	l->pl.count = 0;
> +	if (l->pl.state == TIPC_PL_BASE) {
> +		l->pl.state = TIPC_PL_SEARCH; /* Base -> Search */
> +		l->pl.probe_size += TIPC_PL_BIG_STEP;
> +	} else if (l->pl.state == TIPC_PL_ERROR) {
> +		l->pl.state = TIPC_PL_SEARCH; /* Error -> Search */
> +
> +		l->pl.pmtu = l->pl.probe_size;
> +		l->mtu = l->pl.pmtu;
> +		l->pl.probe_size += TIPC_PL_BIG_STEP;
> +	} else if (l->pl.state == TIPC_PL_SEARCH) {
> +		if (!l->pl.probe_high) {
> +			l->pl.probe_size = min(l->pl.probe_size + TIPC_PL_BIG_STEP,
> +					       TIPC_MAX_PLPMTU);
> +			return;
> +		}
> +		l->pl.probe_size += TIPC_PL_MIN_STEP;
> +		if (l->pl.probe_size >= l->pl.probe_high) {
> +			l->pl.probe_high = 0;
> +			l->pl.raise = 0;
> +			l->pl.state = TIPC_PL_COMPLETE; /* Search -> Search Complete */
> +
> +			l->pl.probe_size = l->pl.pmtu;
> +			l->mtu = l->pl.pmtu;
> +		}
> +	} else if (l->pl.state == TIPC_PL_COMPLETE) {
> +		l->pl.raise++;
> +		if (l->pl.raise == 30) {
> +			l->pl.state = TIPC_PL_SEARCH; /* Search Complete -> Search */
> +			l->pl.probe_size += TIPC_PL_MIN_STEP;
> +		}
> +	}
> +}
> 



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
