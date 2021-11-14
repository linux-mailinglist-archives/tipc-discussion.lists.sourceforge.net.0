Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCAD44F9FD
	for <lists+tipc-discussion@lfdr.de>; Sun, 14 Nov 2021 19:46:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mmKWI-0000eX-Fh; Sun, 14 Nov 2021 18:46:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1mmKWG-0000eR-Q9
 for tipc-discussion@lists.sourceforge.net; Sun, 14 Nov 2021 18:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0Hb7HYBr3MkHLqnXXj0zUOm5bWuZ3Tc2/8P/N0j2jj4=; b=EjuzwBkn2ObbNuwHfy6fw1VE2Y
 n72YF/6DaP6QJP9z+f3HC1U5RaBbSA7OntCmJSXtz5RACjaLUaxYJp7W9eDV+IOOZoazu2zG3eL0X
 Z1pC+aiH15UpMAfw9JyoUxLh3VuBD5Lk+Z0dTbPB0gy5J/d38KPiGbWkhkMyhJ3nGrwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0Hb7HYBr3MkHLqnXXj0zUOm5bWuZ3Tc2/8P/N0j2jj4=; b=AFELhWdjwKKGgWFefglwZBCbwL
 TSCHIb68QJSAuT71znf86CM+k6LO7jcbmsrTqcBw2LReafmaPblY8/WrhgkkudyrJr96S7Agq8UMH
 HYOIYY/Uxy37a+G7jHhuihfIL5BCaQuO9zJdRD5vpDJ0iDBckllHwNVAK13KGixn1ngM=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mmKWC-0000FI-Iu
 for tipc-discussion@lists.sourceforge.net; Sun, 14 Nov 2021 18:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636915574;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0Hb7HYBr3MkHLqnXXj0zUOm5bWuZ3Tc2/8P/N0j2jj4=;
 b=Z8GL2Qt1BXv1yGEMwlxKpeA81YaLvta+PoW+saMNlggC0ud86wxGnqbuCG3u3ZyOOJL1Yk
 7Uco4p9a9buCUezo0/YMRubrJTmJl2eQ9JbU00lYNlcLa86hcT2DzEiHfPBehjADNWjxLJ
 lLRHxYmeml6cvlj2N+1yIvccFH23U4s=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-562-bkc1stwBOHCuWfnz1bI_xQ-1; Sun, 14 Nov 2021 13:46:13 -0500
X-MC-Unique: bkc1stwBOHCuWfnz1bI_xQ-1
Received: by mail-qv1-f72.google.com with SMTP id
 kd7-20020a056214400700b003b54713452cso13951920qvb.13
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 14 Nov 2021 10:46:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=0Hb7HYBr3MkHLqnXXj0zUOm5bWuZ3Tc2/8P/N0j2jj4=;
 b=Ln773PsDhZP6Q0CCUNL6debaOVVvAdoap5rq2NsbU4mGRfHw2w5v2+tKNEPh+MFyIA
 1CQDVoWbQ1SElCdEisAZxUTQ5/+5/cUUIxSGksHxBhjLwZQNADnGXM8vXopsNdxkK1Az
 qG3lg53wRUVJv7wXyMBNBZbdarUE7DYR6LZzm8AKFWQv8RPbvDRzKTG/vtmMrxPJnKY2
 xMnq/mK7pGoqz8yDAyWzYE9kI5OVtESXvZFRj4p5eUoVWcTxLf5hVhtdOFcipSgq1psD
 b8UdgKc6Ekwn2WIC98U0IiMa9eLjoQ9OnICS03ZODEwUcKWwGfXVAbeWwYHbdXdgF4JO
 SoPA==
X-Gm-Message-State: AOAM530ExWv0LMJeJxc11/m9e5xvv70spiSUAWU5JQm+PXX5avw9cE69
 /7xpq9CiP97ut4w9NDldtfn6xF56Mb5kiflafIeUKB2rXPz4XqhV7HCsaSr8Vtw9nGW5uwSkmsh
 zgmlAxNUOZtHuyavGdnIFrIohY6QVXH1UwLTu
X-Received: by 2002:a05:6214:3012:: with SMTP id
 ke18mr30852527qvb.63.1636915572884; 
 Sun, 14 Nov 2021 10:46:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxUJzkl1VAuYyOliub7+e55U6Seh57eAEDkogQ5b+CwqMxWREh7VKVQNtGo/HS+ETlOULmI8A==
X-Received: by 2002:a05:6214:3012:: with SMTP id
 ke18mr30852509qvb.63.1636915572669; 
 Sun, 14 Nov 2021 10:46:12 -0800 (PST)
Received: from [10.0.0.96] ([24.225.241.171])
 by smtp.gmail.com with ESMTPSA id k19sm6693496qta.82.2021.11.14.10.46.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Nov 2021 10:46:12 -0800 (PST)
Message-ID: <77ac11fb-d9d6-9539-8910-a63e03c3127f@redhat.com>
Date: Sun, 14 Nov 2021 13:48:28 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
To: "Xue, Ying" <Ying.Xue@windriver.com>, Xin Long <lucien.xin@gmail.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
References: <d34934d6dab6d6490c324c60eb9a06119302bde4.1636744961.git.lucien.xin@gmail.com>
 <BL3PR11MB5682A731BCC8C06CE37B512C84979@BL3PR11MB5682.namprd11.prod.outlook.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <BL3PR11MB5682A731BCC8C06CE37B512C84979@BL3PR11MB5682.namprd11.prod.outlook.com>
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
 Content preview:  Acked-by: Jon Maloy <jmaloy@redhat.com> On 11/14/21 08:09,
 Xue, Ying wrote: > Thanks Xin! The patch looks good to me. > > Acked-by:
 Ying Xue <ying.xue@windriver.com> > > 
 Content analysis details:   (-3.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mmKWC-0000FI-Iu
Subject: Re: [tipc-discussion] [PATCH net] tipc: only accept encrypted
 MSG_CRYPTO msgs
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

Acked-by: Jon Maloy <jmaloy@redhat.com>

On 11/14/21 08:09, Xue, Ying wrote:
> Thanks Xin! The patch looks good to me.
>
> Acked-by: Ying Xue <ying.xue@windriver.com>
>
> -----Original Message-----
> From: Xin Long <lucien.xin@gmail.com>
> Sent: Saturday, November 13, 2021 3:23 AM
> To: tipc-discussion@lists.sourceforge.net
> Subject: [tipc-discussion] [PATCH net] tipc: only accept encrypted MSG_CRYPTO msgs
>
> The MSG_CRYPTO msgs are always encrypted and sent to other nodes for keys' deployment. But when receiving in peers, if those nodes do not validate it and make sure it's encrypted, one could craft a malicious MSG_CRYPTO msg to deploy its key with no need to know other nodes' keys.
>
> This patch is to do that by checking TIPC_SKB_CB(skb)->decrypted and discard it if this packet never got decrypted.
>
> Fixes: 1ef6f7c9390f ("tipc: add automatic session key exchange")
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>   net/tipc/link.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/link.c b/net/tipc/link.c index 1b7a487c8841..09ae8448f394 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -1298,8 +1298,11 @@ static bool tipc_data_input(struct tipc_link *l, struct sk_buff *skb,
>   		return false;
>   #ifdef CONFIG_TIPC_CRYPTO
>   	case MSG_CRYPTO:
> -		tipc_crypto_msg_rcv(l->net, skb);
> -		return true;
> +		if (TIPC_SKB_CB(skb)->decrypted) {
> +			tipc_crypto_msg_rcv(l->net, skb);
> +			return true;
> +		}
> +		fallthrough;
>   #endif
>   	default:
>   		pr_warn("Dropping received illegal msg type\n");
> --
> 2.27.0
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
