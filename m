Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0763F280980
	for <lists+tipc-discussion@lfdr.de>; Thu,  1 Oct 2020 23:40:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kO6J4-0005eo-PW; Thu, 01 Oct 2020 21:40:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kO6J3-0005eh-TQ
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Oct 2020 21:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FnUtnYwEmscc3qkwdCKnNlMfkIJCj/7GYp/5Yhwtb7Y=; b=dUROjmbTQUWNPTWrh5O7KRFkhj
 hJZPe6oD+tI6pUYBDUwSwKhdVkEBReV8vSTn2cY1O4FTHh8xE664H5GMIj+Z5hQOV9a9bpEUNeFb3
 y6xyFkpW9KET9nPBFALXYrWHBEmCvpOCiuiXUzFrNwiIjqEQroh/l8jabL3bm/ZL2aCQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FnUtnYwEmscc3qkwdCKnNlMfkIJCj/7GYp/5Yhwtb7Y=; b=UNPtFrp2SkMDl5G1yV4/OUqUWm
 ILSowuZviiicifZT106W+TFUpJU5xEpDyfOZ6w/fRs7JUGv394XRrBLZGKL0Bp3xi/DyM5gfbAb5u
 I1uKIrLi6tf6GP/HHMo2hGX5H2Nq5gU1bSAYrN2qmkG37u0GtojxhSaSmu/JNd/YKK8s=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kO6Iu-00DNGH-3p
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Oct 2020 21:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1601588383;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FnUtnYwEmscc3qkwdCKnNlMfkIJCj/7GYp/5Yhwtb7Y=;
 b=CqasZ3MWBUwVkCWwZnzqvPcIumcW+eIJd5N15Yg7tKP8W0eHFJi/G+UK4zoxOZpyOhy2cZ
 8WYbCG2fwzjxuPrH9mQArue9q3+OshzAhAO7Q1bROxAV2HLXr++XoSSa+65jLW83NHFTIW
 0AOss46JD2+iuo8i+RVG7Y/tho6KCnQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-272-y-Jieub5NMin_LMJciwR7A-1; Thu, 01 Oct 2020 17:39:39 -0400
X-MC-Unique: y-Jieub5NMin_LMJciwR7A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 16D47186DD26;
 Thu,  1 Oct 2020 21:39:38 +0000 (UTC)
Received: from [10.10.116.249] (ovpn-116-249.rdu2.redhat.com [10.10.116.249])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 249A3799B4;
 Thu,  1 Oct 2020 21:39:36 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com, Xin Long <lucien.xin@gmail.com>
References: <20201001014351.8169-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <0f756df1-68c5-339f-ccc2-7a15401e7d91@redhat.com>
Date: Thu, 1 Oct 2020 17:39:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201001014351.8169-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kO6Iu-00DNGH-3p
Subject: Re: [tipc-discussion] [net] tipc: fix incorrect setting window for
 bcast link
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



On 9/30/20 9:43 PM, Hoang Huu Le wrote:
> In commit 16ad3f4022bb
> ("tipc: introduce variable window congestion control"), we applied
> the Reno algorithm to select window size from minimum window to the
> configured maximum window for unicast link.
>
> However, when setting window variable we do not specific to unicast link.
> This lead to the window for broadcast link had effect as unexpect value
> (i.e the window size is constantly 32).
This was intentional, although I thought the value was 50, not 32.
In my experience we cannot afford a generous variable window
in the broadcast link the same way we do with the unicast link.
There will be too many losses and retransmissions because of the
way switches work.

>
> We fix this by updating the window for broadcast as its configuration.
>
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/bcast.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index 940d176e0e87..abac9443b4d9 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -585,7 +585,7 @@ static int tipc_bc_link_set_queue_limits(struct net *net, u32 max_win)
>   	if (max_win > TIPC_MAX_LINK_WIN)
>   		return -EINVAL;
>   	tipc_bcast_lock(net);
> -	tipc_link_set_queue_limits(l, BCLINK_WIN_MIN, max_win);
> +	tipc_link_set_queue_limits(l, max_win, max_win);
>   	tipc_bcast_unlock(net);
>   	return 0;
>   }
What is the effect of this change? Do we still have a fix window?
What happens when we have buffer overflow? The broadcast
send link can never be reset I rember correctly.
Did you test this with high load, e.g. using the multicast_blast test
program?

Regards
///jon



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
