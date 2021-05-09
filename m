Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8A83778F1
	for <lists+tipc-discussion@lfdr.de>; Mon, 10 May 2021 00:10:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lfrcZ-0002Kn-I0; Sun, 09 May 2021 22:09:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dsahern@gmail.com>) id 1lfrcY-0002Kg-C5
 for tipc-discussion@lists.sourceforge.net; Sun, 09 May 2021 22:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NPeFGBu1iIHqqYN091/XPUGAZew+lI26h0TTRnu9/go=; b=ilVVHulMBAUVVG5KT/lGyOsRVo
 fx9mRLj8LAPwBtuNjKUPZy1dup2hI9PcfR+yVZjWEjI7CUWOo7/7rr0fjfoULEutTWl4eqAq1yDaW
 TP/lV6VVvBCNHAVGkl0607HSLZkNAi/2+bTVv358PBNhk2L85KfzdQP8yVqR46gUCvJs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NPeFGBu1iIHqqYN091/XPUGAZew+lI26h0TTRnu9/go=; b=EEEiBxfqrqWmMU+t5XpyrRnvSF
 RW/Rhxx+7GBbl1IwRMJ67d3nLWcQzSPe7gxLC1nDSBbhyqSn2GmridZahZMFnt2W6glI5/nS6jZ60
 WVzwfiSnfJzNXDUyG4ES/Vxz/JAOEzd788tkcUGPsqjzEAt6LWu2LxlqNlD3ROn4hqdE=;
Received: from mail-oo1-f53.google.com ([209.85.161.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lfrcU-00GfRS-JX
 for tipc-discussion@lists.sourceforge.net; Sun, 09 May 2021 22:09:54 +0000
Received: by mail-oo1-f53.google.com with SMTP id
 e7-20020a4ad2470000b02902088d0512ceso258464oos.8
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 09 May 2021 15:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=NPeFGBu1iIHqqYN091/XPUGAZew+lI26h0TTRnu9/go=;
 b=ulegOTxf8AO7SRR6b2mu3KNJzfebI4QUhagz8wlqds9zJ2F40T9BVKA6X+SyclT1Iz
 NOHdROM77UW46F8dp+Z9LmgBhq+uKq/mbU3QtUCG0v3YYh0dsSUdTxlAXsZHiAGL0BEi
 yGy0ADemfK6dKEmVIiIGmbDL8hdwughPgzCV9gpsInsfjVEq3bIv5yNAobAuTO0SE288
 7ZWbPhOBCCUuGpx5XcjDCqcxLkujPWB15pxM3/LwIklHnlGrR3rxP9b1qwl7nkAuryra
 8T5GLuwxs51AtcpnOmfFDiksVURjpnzH0BkkRT/zIY08KH2SM9pFpUyObi6k/Tu9lGLd
 BmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NPeFGBu1iIHqqYN091/XPUGAZew+lI26h0TTRnu9/go=;
 b=G0zLjO7XUvnLBK9aYiTqQoT8OzzmOMtP8vbNv6dT7BCTL98mpKLkfjjtQTHffrzfQ4
 YKzRlKxDqhKoPecbMMtr1ONNMcQ475g0wZw0y3Ko8dloCPeABEMftL1s6dp/qKJ76jHL
 F4fu4YX7DUrT7gkZJtPZYdbH1PqkfMRr/e72QW1h0woDQ95uqhmY4fvnl3otSl4yZNB9
 QYh0wTWwAB15SXqLVoV8oNHJ0QKKKvXVB3KL5PJadUcYYiFjnpxpmxLqUsgP2y4En4Oo
 cuoroLScPxrOm2T5fT4ZHhCnWsmSrclCgU9Jfw/HcBNNINeKIi/M7SspvpdQdmxWmtv+
 o+sg==
X-Gm-Message-State: AOAM530k1RjWw/5S/yMUK2tCAbk9Wh+Nge+MF8EvAOpZk6fm7TvIqJoL
 4SRcnrDml5uufdoZhpTzGn4=
X-Google-Smtp-Source: ABdhPJwCGjHVXCAoyzB9k+9KoNLLs3dw+5rYJxJ0c7XRCCMhYn4mIxaIGgPsRzCaniHuyihKHVWHjw==
X-Received: by 2002:a4a:9c8c:: with SMTP id z12mr16619572ooj.3.1620598184970; 
 Sun, 09 May 2021 15:09:44 -0700 (PDT)
Received: from Davids-MacBook-Pro.local
 ([2601:282:800:dc80:5d79:6512:fce6:88aa])
 by smtp.googlemail.com with ESMTPSA id z4sm2654032otq.65.2021.05.09.15.09.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 09 May 2021 15:09:44 -0700 (PDT)
To: Hoang Le <hoang.h.le@dektech.com.au>, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
References: <20210506032724.4111-1-hoang.h.le@dektech.com.au>
From: David Ahern <dsahern@gmail.com>
Message-ID: <f62d9905-22d1-08db-1b6b-e32e7d089e87@gmail.com>
Date: Sun, 9 May 2021 16:09:42 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210506032724.4111-1-hoang.h.le@dektech.com.au>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dsahern[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.53 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lfrcU-00GfRS-JX
Subject: Re: [tipc-discussion] [iproute2] tipc: call a sub-routine in
 separate socket
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 5/5/21 9:27 PM, Hoang Le wrote:
> When receiving a result from first query to netlink, we may exec
> a another query inside the callback. If calling this sub-routine
> in the same socket, it will be discarded the result from previous
> exection.
> To avoid this we perform a nested query in separate socket.
> 
> Fixes: 202102830663 ("tipc: use the libmnl functions in lib/mnl_utils.c")
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> ---
>  tipc/bearer.c | 50 +++++++++++++++++++++++++++++++++++++++++++++-----
>  tipc/link.c   | 15 +++++++++++++--
>  tipc/socket.c | 17 +++++++++++++++--
>  3 files changed, 73 insertions(+), 9 deletions(-)
> 

applied, thanks



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
