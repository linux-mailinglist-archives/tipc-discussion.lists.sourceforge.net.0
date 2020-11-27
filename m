Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 664CA2C6889
	for <lists+tipc-discussion@lfdr.de>; Fri, 27 Nov 2020 16:15:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kifT4-0001iD-IS; Fri, 27 Nov 2020 15:15:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kifSZ-0001Zy-Ur
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Nov 2020 15:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vcyFI6e60R89kPlEBn3YlShdk0/Ulp0v165zAEmL238=; b=k1t8foDhkhwyUM5o2qSL0xdhD4
 UwXmf1A+4uxgN5SlYDWbUInIOLYIDk/V/U8no+4MSS9I+MKkVb4b9yhdKkF6KctM2BzHzMUfS4+M6
 6aNOUUH40uRgvmt0pdzzNf9DyO6KkLSvUeahhFGxmoQt/KD3+UiNtn+PMpo+7XlQZWB8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vcyFI6e60R89kPlEBn3YlShdk0/Ulp0v165zAEmL238=; b=QYAP57eIBBNIZBU0TJfj7ww3OR
 L6zoEeZlRqhd71hrqHcniXBBSaUi49jA5yebQStvZFSMJ72RdeR4Cvtr3jrFInI8OYZ7ZZ0gINi6y
 JAJavCUbu95bKQBqBzb7MNsU46RFI5Oz9RCWStTjLeSpPuxh5KcE01aTxktOFlFRXBfQ=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kifSU-007MyM-T6
 for tipc-discussion@lists.sourceforge.net; Fri, 27 Nov 2020 15:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606490084;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vcyFI6e60R89kPlEBn3YlShdk0/Ulp0v165zAEmL238=;
 b=ENelKBN9Mi7W3MLuFykhY/5HfMWo21pqF5TTQvOO7hjuYETcavUbE91T7D2NUG/OcA1PkY
 lUx/dknFMB8BmxrNuNrYGm8gwcyF+Dipl1pcgTzEie+SUgZE5sQWi157Na0kIi4Ax0fKky
 wlkESQUF+7P6dxzE+uvwt+F+0zm9UjE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-564-7QFpUO7tNs6nrgfahM5VoQ-1; Fri, 27 Nov 2020 10:14:42 -0500
X-MC-Unique: 7QFpUO7tNs6nrgfahM5VoQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6ABC7108E1A0;
 Fri, 27 Nov 2020 15:14:41 +0000 (UTC)
Received: from [10.10.113.94] (ovpn-113-94.rdu2.redhat.com [10.10.113.94])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 347886085D;
 Fri, 27 Nov 2020 15:14:40 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com
References: <20201127050111.4595-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <d08c5950-aa88-100d-f47a-1ad3a025d3cc@redhat.com>
Date: Fri, 27 Nov 2020 10:14:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201127050111.4595-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kifSU-007MyM-T6
Subject: Re: [tipc-discussion] [net] tipc: fix incompatiable mtu of
 transmission
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



On 11/27/20 12:01 AM, Hoang Huu Le wrote:
> From: Hoang Le <hoang.h.le@dektech.com.au>
>
> In commit 682cd3cf946b6
> ("tipc: confgiure and apply UDP bearer MTU on running links"), we
> introduced a function to change UDP bearer MTU and applied this new value
> across existing per-link. However, we did not apply this new MTU value at
> node level. This lead to packet dropped at link level if its size is
> greater than new MTU value.
>
> To fix this issue, we also apply this new MTU value for node level.
>
> Fixes: 682cd3cf946b6 ("tipc: confgiure and apply UDP bearer MTU on running links")
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/node.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index cd67b7d5169f..9f6975dd7873 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -2182,6 +2182,8 @@ void tipc_node_apply_property(struct net *net, struct tipc_bearer *b,
>   			else if (prop == TIPC_NLA_PROP_MTU)
>   				tipc_link_set_mtu(e->link, b->mtu);
>   		}
> +		/* Update MTU for node link entry */
> +		e->mtu = tipc_link_mss(e->link);
>   		tipc_node_write_unlock(n);
>   		tipc_bearer_xmit(net, bearer_id, &xmitq, &e->maddr, NULL);
>   	}
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
