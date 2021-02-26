Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 943B73264FD
	for <lists+tipc-discussion@lfdr.de>; Fri, 26 Feb 2021 16:53:00 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lFfQC-000220-5D; Fri, 26 Feb 2021 15:52:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lFfQB-00021j-FL
 for tipc-discussion@lists.sourceforge.net; Fri, 26 Feb 2021 15:52:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PJ18RkmsPkIPKWkOEMzkdsdBiLTplzROrj8jZ623yaE=; b=fuYpEeJP5VTxmv4nW3fgPMIy+4
 U3KoRefjKkgQ0QBw8rxpF1LvbspUdBW1cOWpdbIkdCa1NmDTnwUhO0vLLGIBAVl1Y63VV/3JOiXGa
 h3FXmDW/DVIQVSUkoGGv745QxtNwB1SCg3n0Pcid+17jAUJ6e9E/Lf6tjQZgVM60o1ak=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PJ18RkmsPkIPKWkOEMzkdsdBiLTplzROrj8jZ623yaE=; b=jg2vh1A3W5v15Wf0vJh+0ry3+s
 MggvTpjZAo/tZhmaEyssrYYuGJrdtHQEg/RIUm/DDNb57vTYat33TtNRIV5lFr3q7749NbX5zcTCy
 0hMdtbValQT7EhB+0cBnIBlFyTvEferxal4iYc/7sw2tOMIyg8FffydIP5amTtPnfpiY=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lFfQ5-0004Pb-2f
 for tipc-discussion@lists.sourceforge.net; Fri, 26 Feb 2021 15:52:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614354757;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PJ18RkmsPkIPKWkOEMzkdsdBiLTplzROrj8jZ623yaE=;
 b=gs0wN0VQbqOqwQGo/G59G5Fe8RMSdU8lGSB6mj6vg2dyfhKEgtMAA6ydpC2sX/aAGcWJle
 qU5+YKVQjw7vsnXX2f+fnRVM/C/UXOjuen6hgkWWBDW8XnZHjRotul4vQst8O1x/2ke+7G
 6kXzwLRmnPbx36tKpR3kr7FCgFVyixI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-8c3F1IJ0Mj6hdl42HqcRlw-1; Fri, 26 Feb 2021 10:52:33 -0500
X-MC-Unique: 8c3F1IJ0Mj6hdl42HqcRlw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A1811005501;
 Fri, 26 Feb 2021 15:52:31 +0000 (UTC)
Received: from [10.10.114.105] (ovpn-114-105.rdu2.redhat.com [10.10.114.105])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CF42B5D9D2;
 Fri, 26 Feb 2021 15:52:29 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20210118080845.3771-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <ee76d5fd-8d7a-e2a3-b8f6-a35f7ff36591@redhat.com>
Date: Fri, 26 Feb 2021 10:52:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210118080845.3771-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
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
X-Headers-End: 1lFfQ5-0004Pb-2f
Subject: Re: [tipc-discussion] [net-next v2 1/2] tipc: convert dest node's
 address to network order
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

Hi Hoang,
I noticed that this series is not upstream yet. Did I forget to ack it?
Series
Acked-by: Jon Maloy <jmaloy@redhat.com>

On 1/18/21 3:08 AM, Hoang Huu Le wrote:
> From: Hoang Le <hoang.h.le@dektech.com.au>
>
> (struct tipc_link_info)->dest is in network order (__be32), so we must
> convert the value to network order before assigning. The problem detected
> by sparse:
>
> net/tipc/netlink_compat.c:699:24: warning: incorrect type in assignment (different base types)
> net/tipc/netlink_compat.c:699:24:    expected restricted __be32 [usertype] dest
> net/tipc/netlink_compat.c:699:24:    got int
>
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/netlink_compat.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/net/tipc/netlink_compat.c b/net/tipc/netlink_compat.c
> index 5a1ce64039f7..0749df80454d 100644
> --- a/net/tipc/netlink_compat.c
> +++ b/net/tipc/netlink_compat.c
> @@ -696,7 +696,7 @@ static int tipc_nl_compat_link_dump(struct tipc_nl_compat_msg *msg,
>   	if (err)
>   		return err;
>   
> -	link_info.dest = nla_get_flag(link[TIPC_NLA_LINK_DEST]);
> +	link_info.dest = htonl(nla_get_flag(link[TIPC_NLA_LINK_DEST]));
>   	link_info.up = htonl(nla_get_flag(link[TIPC_NLA_LINK_UP]));
>   	nla_strscpy(link_info.str, link[TIPC_NLA_LINK_NAME],
>   		    TIPC_MAX_LINK_NAME);



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
